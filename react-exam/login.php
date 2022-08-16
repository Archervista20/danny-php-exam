<?php include 'db.php'; ?>
<?php 
  // Allow from any origin
  if (isset($_SERVER['HTTP_ORIGIN'])) {
    // Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
    // you want to allow, and if so:
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400');    // cache for 1 day
  }
?>

<?php 
$json = file_get_contents('php://input');
$data = json_decode($json);

if (isset($data->email) && isset($data->password)) {
    # code...
    $email = $data->email;
    $password = $data->password;

    $validateEmail = "SELECT * FROM users WHERE email = '$email'";
    $valEmail      = mysqli_query($conn, $validateEmail);
    $user          = mysqli_fetch_array($valEmail, MYSQLI_ASSOC);

    if (password_verify($password, $user['password'])) {
      echo json_encode(['msg' => 'Successfully Login', 'status' => 'success']);
    } else {
      echo json_encode(['msg' => 'Wrong Credentials', 'status' => 'failed']);
    }
    mysqli_close($conn);     

  
} else {
  echo json_encode(['msg' => 'Error Encounter Please Contact Admin', 'status' => 'failed']);
}
?>