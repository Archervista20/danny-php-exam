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
if (isset($data->email) && isset($data->password) && isset($data->retype_password)) {

  if ($data->password != $data->retype_password) {
    echo json_encode(['msg' => 'Sorry the password is not match', 
                              'status' => 'failed']);
  } else {
    $email = $data->email;
    $password = $data->password;
    $hash = password_hash($data->password, PASSWORD_BCRYPT); 

    $validateEmail = "SELECT * FROM users WHERE email = '$email'";
    $valEmail = mysqli_query($conn, $validateEmail);
    $numRows = mysqli_fetch_array($valEmail, MYSQLI_ASSOC);
    if ($numRows) {
      echo json_encode(['msg' => 'Email is already exists!', 
                                'status' => 'failed']);
      mysqli_close($conn);
    } else {
      $sql = "INSERT INTO users (email, password, date) VALUES ('$email', '$hash', NOW())";
      $result = mysqli_query($conn, $sql);
      if($result){
        echo json_encode(['msg' => 'Thank you for registering', 
                          'status' => 'success']);
      } else {
        echo json_encode(['msg' => "Error: " . $sql . "<br>" . mysqli_error($conn), 
                            'status' => 'failed']);
      }
      mysqli_close($conn);     
    }
  }
} else {
  echo json_encode(['msg' => 'Error Encounter Please Contact Admin', 'status' => 'failed']);
}


?>