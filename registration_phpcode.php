<?php
	//include 'temp_filter.php';
	include 'final.php';
	$conn=mysqli_connect('localhost','root','','Hostel');
	$G_ID;
	if (isset($_POST['submit'])) {
		$name=$_POST['name'];
		$city=strtolower($_POST['city']);
		//$distance=$_POST['distance'];
		$contact=$_POST['contact'];
		$gender=$_POST['gender'];
		$percentage=$_POST['percentage'];
		$quota=$_POST['quota'];

		$dist_sql="SELECT * FROM all_distance WHERE city='$city';";
		$dist_sql_run=mysqli_query($conn,$dist_sql);
		$dist_ar=mysqli_fetch_assoc($dist_sql_run);
		$distance=$dist_ar['distance'];

		$sql="INSERT INTO merit (Name,City,Contact,Gender,Percentage,Quota) VALUES ('$name','$city','$contact','$gender','$percentage','$quota');";

		mysqli_query($conn,$sql);
		$sql1="SELECT G_ID from merit where Contact = '$contact';";
		$run=mysqli_query($conn,$sql1);
		$G_ID_AR=mysqli_fetch_assoc($run);
		$L_ID=$G_ID_AR['G_ID'];
		$G_ID=$L_ID;
		if ($gender=='male') {
			$sql="INSERT INTO m_table(G_ID, Name, Distance, Percentage, Quota) VALUES ('$L_ID','$name','$distance','$percentage','$quota');";
			mysqli_query($conn,$sql);
			if($quota=='gen'){
				$score=($distance*0.6)+($percentage*0.4);
				$sql="INSERT INTO m_gen(G_ID, Name, Distance, Percentage,Score) VALUES ('$L_ID','$name','$distance','$percentage','$score');";
				mysqli_query($conn,$sql);				
			}else if($quota=='obc'){
				$score=($distance*0.6)+($percentage*0.4);
				$sql="INSERT INTO m_obc(G_ID, Name, Distance, Percentage,Score) VALUES ('$L_ID','$name','$distance','$percentage','$score');";
				mysqli_query($conn,$sql);				
			}else if($quota=='sc'){
				$score=($distance*0.6)+($percentage*0.4);
				$sql="INSERT INTO m_sc(G_ID, Name, Distance, Percentage,Score) VALUES ('$L_ID','$name','$distance','$percentage','$score');";
				mysqli_query($conn,$sql);				
			}
		}
		else if ($gender=='female') {
			$sql="INSERT INTO f_table(G_ID, Name, Distance, Percentage, Quota) VALUES ('$L_ID','$name','$distance','$percentage','$quota');";
			mysqli_query($conn,$sql);
			if($quota=='gen'){
				$score=($distance*0.6)+($percentage*0.4);
				$sql="INSERT INTO f_gen(G_ID, Name, Distance, Percentage,Score) VALUES ('$L_ID','$name','$distance','$percentage','$score');";
				mysqli_query($conn,$sql);				
			}else if($quota=='obc'){
				$score=($distance*0.6)+($percentage*0.4);
				$sql="INSERT INTO f_obc(G_ID, Name, Distance, Percentage,Score) VALUES ('$L_ID','$name','$distance','$percentage','$score');";
				mysqli_query($conn,$sql);				
			}else if($quota=='sc'){
				$score=($distance*0.6)+($percentage*0.4);
				$sql="INSERT INTO f_sc(G_ID, Name, Distance, Percentage,Score) VALUES ('$L_ID','$name','$distance','$percentage','$score');";
				mysqli_query($conn,$sql);				
			}
		}
		header("Location: registration.php?signup=success");
		
	}
	else if(isset($_POST['drop'])){
		drop();
	}
	else if(isset($_POST['filter'])){
			print_m_gen();
			print_m_obc();
			print_m_sc();
			print_f_gen();
			print_f_obc();
			print_f_sc();
			//header("Location: temp_filter.php?sorting=success");
			drop();
	}
	else if(isset($_POST['final'])){
			
			final_male();
			final_female();
			truncate_male();
			truncate_female();
	}	

?>
