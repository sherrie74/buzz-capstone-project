<?php
	if (isset($_GET["email"]) && isset($_GET["token"])) {
		$conn = new mysqli("localhost", "root", "root");
		
		$email = $conn->real_escape_string($_GET["email"]);
		$token = $conn->real_escape_string($_GET["token"]);
		
		$data = $conn->query("SELECT id FROM users WHERE email='$email' AND token='$token'");
		
		if ($data->num_rows > 0) {
			$str = "0123456789qwertyuiopasdfghjklzxcvbnm";
			$str = str_suffle($str);
			$str = substr($str, 0, 15);
			$password = sha1($str);
			
			$conn->query("UPDATE users SET password = '$password', token="" WHERE email='$email'");
			
			echo "Your new password is: $str";
		}	else {
				echo "Please check your link"
		}
		
	} else {
		header("Location: login.php");
		exit();
	}
?>