<html>
	<body>
		<form action="index.php" method="POST"> 
			Name:<input type="text" name="name">
			Adress in value:<input type="number" name="city_distance">
			
			male:<input type="radio" name="gender" id="male" >
			female:<input type="radio" name="gender" id="female">
			
			merit:<input type="number" name="merit" >
			
			open:<input type="radio" name="quota" id="open">
			obc:<input type="radio" name="quota" id="obc">
			sc/st:<input type="radio" name="quota" id="scst">
			pd:<input type="radio" name="quota" id="pd">
			
			<button type="submit" name="submit"></button>
			
		</form>
	</head>
</html>
<?php
	//$conn=mysql_connect("root","hostel");

	if (isset($_POST['submit'])) {
		# code...
		$name=$_POST['name'];
		$addr=$_POST['city_distance'];
		$merit=$_POST['merit'];
		$quota=$_POST['quota'];

		$score=($addr*0.6)+($merit*0.4);
		echo '<h1>Score:- '.$score.'</h1>';
	}

?>