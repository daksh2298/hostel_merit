<?php
		function m_gen_temp(){
			$conn=mysqli_connect('localhost','root','','Hostel');
			$m_gen_score_sql="create table m_gen_test  (
							Rank int NOT NULL AUTO_INCREMENT, 
							Name varchar(40) ,
							Distance float(6),
    						Percentage float(5),
    						Score float(15),
    						PRIMARY KEY (Rank)
							) AS SELECT * FROM m_gen ORDER BY m_gen.Score DESC;";
			mysqli_query($conn,$m_gen_score_sql);
		}

		function m_obc_temp(){
			$conn=mysqli_connect('localhost','root','','Hostel');
			$m_obc_score_sql="create table m_obc_test  (
							Rank int NOT NULL AUTO_INCREMENT, 
							Name varchar(40) ,
							Distance float(6),
    						Percentage float(5),
    						Score float(15),
    						PRIMARY KEY (Rank)
							) AS SELECT * FROM m_obc ORDER BY m_obc.Score DESC;";
			mysqli_query($conn,$m_obc_score_sql);
		}

		function m_sc_temp(){
			$conn=mysqli_connect('localhost','root','','Hostel');
			$m_sc_score_sql="create table m_sc_test  (
							Rank int NOT NULL AUTO_INCREMENT, 
							Name varchar(40) ,
							Distance float(6),
    						Percentage float(5),
    						Score float(15),
    						PRIMARY KEY (Rank)
							) AS SELECT * FROM m_sc ORDER BY m_sc.Score DESC;";
			mysqli_query($conn,$m_sc_score_sql);
		}

		function f_gen_temp(){
			$conn=mysqli_connect('localhost','root','','Hostel');
			$f_gen_score_sql="create table f_gen_test  (
							Rank int NOT NULL AUTO_INCREMENT, 
							Name varchar(40) ,
							Distance float(6),
    						Percentage float(5),
    						Score float(15),
    						PRIMARY KEY (Rank)
							) AS SELECT * FROM f_gen ORDER BY f_gen.Score DESC;";
			mysqli_query($conn,$f_gen_score_sql);
		}

		function f_obc_temp(){
			$conn=mysqli_connect('localhost','root','','Hostel');
			$f_obc_score_sql="create table f_obc_test  (
							Rank int NOT NULL AUTO_INCREMENT, 
							Name varchar(40) ,
							Distance float(6),
    						Percentage float(5),
    						Score float(15),
    						PRIMARY KEY (rank)
							) AS SELECT * FROM f_obc ORDER BY f_obc.Score DESC;";
			mysqli_query($conn,$f_obc_score_sql);
		}

		function f_sc_temp(){
			$conn=mysqli_connect('localhost','root','','Hostel');
			$f_sc_score_sql="create table f_sc_test  (
							Rank int NOT NULL AUTO_INCREMENT, 
							Name varchar(40) ,
							Distance float(6),
    						Percentage float(5),
    						Score float(15),
    						PRIMARY KEY (rank)
							) AS SELECT * FROM f_sc ORDER BY f_sc.Score DESC;";
			mysqli_query($conn,$f_sc_score_sql);
		}

			//echo "<h1>"."Data Sorted by Score"."</h1>";
?>