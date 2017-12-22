<?php
	include 'temp_filter.php';
		function final_male(){
			m_gen_temp();
			m_obc_temp();
			m_sc_temp();
			$conn=mysqli_connect('localhost','root','','Hostel');
			$hostel_seats=10;
			$gen_male_seats=$hostel_seats*0.7;
			$obc_male_seats=$hostel_seats*0.2;
			$sc_male_seats=$hostel_seats*0.1;
			
			for($i=1;$i<=$gen_male_seats;$i++){
				$sql="select G_ID from m_gen_test where Rank ='$i'";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				$G_ID=$G_ID_AR['G_ID'];
				
				$sql="select * from merit where G_ID='$G_ID';";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				
				$sql="INSERT INTO final_male(G_ID, Name, Contact, City, Percentage, Quota)
				VALUES ('".$G_ID_AR['G_ID']."','".$G_ID_AR['Name']."','".$G_ID_AR['Contact']."','".$G_ID_AR['City']."','".$G_ID_AR['Percentage']."','".$G_ID_AR['Quota']."')";
				$run=mysqli_query($conn,$sql);
			}
			$i=1;
			for($i=1;$i<=$obc_male_seats;$i++){
				$sql="select G_ID from m_obc_test where Rank ='$i'";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				$G_ID=$G_ID_AR['G_ID'];
				
				$sql="select * from merit where G_ID='$G_ID';";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				/*echo $G_ID_AR['G_ID'];
				echo $G_ID_AR['Name'];
				echo $G_ID_AR['Contact'];
				*/
				$sql="INSERT INTO final_male(G_ID, Name, Contact, City,Percentage,Quota)
				VALUES ('".$G_ID_AR['G_ID']."','".$G_ID_AR['Name']."','".$G_ID_AR['Contact']."','".$G_ID_AR['City']."','".$G_ID_AR['Percentage']."','".$G_ID_AR['Quota']."')";
				$run=mysqli_query($conn,$sql);
			}
			$i=1;
			for($i=1;$i<=$sc_male_seats;$i++){
				$sql="select G_ID from m_sc_test where Rank ='$i'";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				$G_ID=$G_ID_AR['G_ID'];
				
				$sql="select * from merit where G_ID='$G_ID';";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				
				$sql="INSERT INTO final_male(G_ID, Name,Contact,City,Percentage,Quota)
				VALUES ('".$G_ID_AR['G_ID']."','".$G_ID_AR['Name']."','".$G_ID_AR['Contact']."','".$G_ID_AR['City']."','".$G_ID_AR['Percentage']."','".$G_ID_AR['Quota']."')";
				$run=mysqli_query($conn,$sql);
			}
			$m_final_fetch="SELECT * FROM final_male;";
			$m_final_fetch_run=mysqli_query($conn,$m_final_fetch);
			$num=mysqli_num_rows($m_final_fetch_run);
			while($result=mysqli_fetch_assoc($m_final_fetch_run)){
				$GLOBALS['table_m_final'].="<tr>
				<td>{$result['Rank']}</td>
				<td>{$result['Name']}</td>
				<td>{$result['Contact']}</td>
				<td>{$result['City']}</td>
				<td>{$result['Percentage']} </td>
				 <td>{$result['Quota']} </td>
				</tr>";
			}
			echo $GLOBALS['table_m_final'];
		}
		function final_female(){
			f_gen_temp();
			f_obc_temp();
			f_sc_temp();
			$conn=mysqli_connect('localhost','root','','Hostel');
			$hostel_seats=10;
			$gen_female_seats=$hostel_seats*0.7;
			$obc_female_seats=$hostel_seats*0.2;
			$sc_female_seats=$hostel_seats*0.1;
			
			for($i=1;$i<=$gen_female_seats;$i++){
				$sql="select G_ID from f_gen_test where Rank ='$i'";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				$G_ID=$G_ID_AR['G_ID'];
				
				$sql="select * from merit where G_ID='$G_ID';";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				
				$sql="INSERT INTO final_female(G_ID, Name, Contact, City, Percentage, Quota)
				VALUES ('".$G_ID_AR['G_ID']."','".$G_ID_AR['Name']."','".$G_ID_AR['Contact']."','".$G_ID_AR['City']."','".$G_ID_AR['Percentage']."','".$G_ID_AR['Quota']."')";
				$run=mysqli_query($conn,$sql);
			}
			$i=1;
			for($i=1;$i<=$obc_female_seats;$i++){
				$sql="select G_ID from f_obc_test where Rank ='$i'";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				$G_ID=$G_ID_AR['G_ID'];
				
				$sql="select * from merit where G_ID='$G_ID';";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				/*echo $G_ID_AR['G_ID'];
				echo $G_ID_AR['Name'];
				echo $G_ID_AR['Contact'];
				*/
				$sql="INSERT INTO final_female(G_ID, Name, Contact, City,Percentage,Quota)
				VALUES ('".$G_ID_AR['G_ID']."','".$G_ID_AR['Name']."','".$G_ID_AR['Contact']."','".$G_ID_AR['City']."','".$G_ID_AR['Percentage']."','".$G_ID_AR['Quota']."')";
				$run=mysqli_query($conn,$sql);
			}
			$i=1;
			for($i=1;$i<=$sc_female_seats;$i++){
				$sql="select G_ID from f_sc_test where Rank ='$i'";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				$G_ID=$G_ID_AR['G_ID'];
				
				$sql="select * from merit where G_ID='$G_ID';";
				$run=mysqli_query($conn,$sql);
				$G_ID_AR=mysqli_fetch_assoc($run);
				
				$sql="INSERT INTO final_female(G_ID, Name,Contact,City,Percentage,Quota)
				VALUES ('".$G_ID_AR['G_ID']."','".$G_ID_AR['Name']."','".$G_ID_AR['Contact']."','".$G_ID_AR['City']."','".$G_ID_AR['Percentage']."','".$G_ID_AR['Quota']."')";
				$run=mysqli_query($conn,$sql);
			}
			$f_final_fetch="SELECT * FROM final_female;";
			$f_final_fetch_run=mysqli_query($conn,$f_final_fetch);
			$num=mysqli_num_rows($f_final_fetch_run);
			while($result=mysqli_fetch_assoc($f_final_fetch_run)){
				$GLOBALS['table_f_final'].="<tr>
				<td>{$result['Rank']}</td>
				<td>{$result['Name']}</td>
				<td>{$result['Contact']}</td>
				<td>{$result['City']}</td>
				<td>{$result['Percentage']} </td>
				 <td>{$result['Quota']} </td>
				</tr>";
			}
			echo $GLOBALS['table_f_final'];
		}


?>