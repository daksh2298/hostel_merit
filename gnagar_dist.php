<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method="POST" action="gnagar_dist.php">
		<input type="text" name="district" placeholder="District" required>
		<input type="text" name="distance" placeholder="Distance" required>
		<button type="submit" name="submit">Submit</button>
	</form>
	<?php
		$conn=mysqli_connect('localhost','root','','Hostel');
		if(isset($_POST['submit'])){
			$district=$_POST['district'];
			$distance=$_POST['distance'];

			$sql="INSERT INTO all_distance (city,distance) VALUES ('$district','$distance');";
			if (mysqli_query($conn,$sql)) {
				header("Location: gnagar_dist.php?upload=success");
			}
		}
		else{
			echo "error";
		}
	?>
</body>
</html>