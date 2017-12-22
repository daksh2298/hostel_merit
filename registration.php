<html>
<body><pre>
	<form action="registration_phpcode.php" method = "POST">
		Name:
		<input type="text" name="name" required></br>
		City:
		<input type="text" name="city" required></br>
		Contact:
		<input type="number" name="contact" required></br>
		Gender:
		<input type="radio" name="gender" value="male" checked  required>male<br>
		<input type="radio" name="gender" value="female" required>female<br>	
		Percentage:
		<input type="number" name="percentage" required></br>
		Quota:
		<input type="radio" name="quota" value="gen" checked required>General<br>
		<input type="radio" name="quota" value="sc" required>SC/ST<br>	
		<input type="radio" name="quota" value="obc" required>OBC<br>	
		<button type="submit" name="submit">SUBMIT</button><br>
	</form>
	<form action="registration_phpcode.php" method="POST">
		<button type="submit" name="filter">FILTER</button><br>
		<button type="submit" name="drop">Drop</button><br>
		<button type="submit" name="final">Final</button><br>
		<button type="submit" name="truncate">Truncate</button><br>
	</form>	
	</pre></body>
<html>
