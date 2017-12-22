<?php
	//include 'registration_phpcode.php'; 
		function male_bifuc($L_ID,$name,$distance,$percentage,$quota){
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
?>