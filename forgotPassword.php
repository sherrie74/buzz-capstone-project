<?php
	
	if (isset($_POST["forgotPass"])){	
		// Create connection
		$conn = new mysqli("localhost", "root", "root");
		
		$email = $conn->real_escape_string($_POST["email"]);
		
		$data = $conn->query("SELECT id FROM users WHERE email='$email'");
		
		if ($data->num-rows > 0) {
			$str = "0123456789qwertyuiopasdfghjklzxcvbnm";
			$str = str_suffle($str);
			$str = substr($str, 0, 10);
			$url = "http://domain.com/members/resetPassword.php?token=$str$email=$email";
			
			mail($email, "Reset Password", "To reset your password, please visit this: $url", "From: myanotheremail@domain.com\r\n");
			
			$conn->query("UPDATE users SET token=$'str' WHERE email='$email'");
			
			echo "PLease check your email";
		} else {
			echo "Please check your inputs";
		}
	}
?>
<html>
	<body>
	<form action="forgotPassword.php" method="post">
		<input type="text" name="email" placeholder="Email"><br>
		<input type="submit" name="forgotPass" value="Request Password" />
	</form>
	</body>
</html>