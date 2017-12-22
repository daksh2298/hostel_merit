<?php
	include 'temp_tables.php';
	include 'tables_sorted_variables.php';

function truncate_male(){
	$conn_temp=mysqli_connect('localhost','root','','Hostel');
	$truncate="TRUNCATE TABLE final_male;";
	//mysqli_connect($conn_temp,$drop);
	if (mysqli_query($conn_temp,$truncate)) {
		echo "truncated..";
		//header("Location: temp_filter.php?drop=success");
	}else{
		echo "error";
	}

}
function truncate_female(){
	$conn_temp=mysqli_connect('localhost','root','','Hostel');
	$truncate="TRUNCATE TABLE final_female;";
	//mysqli_connect($conn_temp,$drop);
	if (mysqli_query($conn_temp,$truncate)) {
		echo "truncated..";
		//header("Location: temp_filter.php?drop=success");
	}else{
		echo "error";
	}

}
function drop(){
	$conn_temp=mysqli_connect('localhost','root','','Hostel');
	$drop="DROP TABLE m_gen_test,m_obc_test,m_sc_test ,f_gen_test,f_obc_test,f_sc_test;";
	//mysqli_connect($conn_temp,$drop);
	if (mysqli_query($conn_temp,$drop)) {
		echo "dropped";
		//header("Location: temp_filter.php?drop=success");
	}else{
		echo "error";
	}
}
function print_m_gen(){
	//include 'registration_phpcode.php';
	m_gen_temp();
	$conn_temp=mysqli_connect('localhost','root','','Hostel');
	$m_gen_fetch="SELECT * FROM m_gen_test;";
	//$q="select * from book ";
	$m_gen_fetch_run=mysqli_query($conn_temp,$m_gen_fetch);
	//$qrun=mysqli_query($conn,$qs);
	$num=mysqli_num_rows($m_gen_fetch_run);
	while($result=mysqli_fetch_assoc($m_gen_fetch_run)){
		//$e=$result['no'];
		$GLOBALS['table_m_gen'].="<tr>
		<td>{$result['Rank']}</td>
		<td>{$result['Name']}</td>
		<td>{$result['Percentage']} </td>
		 <td>{$result['Score']} </td>
		</tr>";
	}
	echo $GLOBALS['table_m_gen'];
	//$GLOBALS['count']++;
}
function print_m_obc(){
	m_obc_temp();
	//include 'registration_phpcode.php';
	$conn_temp=mysqli_connect('localhost','root','','Hostel');
	$m_obc_fetch="SELECT * FROM m_obc_test;";
	//$q="select * from book ";
	$m_obc_fetch_run=mysqli_query($conn_temp,$m_obc_fetch);
	//$qrun=mysqli_query($conn,$qs);
	$num=mysqli_num_rows($m_obc_fetch_run);
	while($result=mysqli_fetch_assoc($m_obc_fetch_run)){
		//$e=$result['no'];
		$GLOBALS['table_m_obc'].="<tr>
		<td>{$result['Rank']}</td>
		<td>{$result['Name']}</td>
		<td>{$result['Percentage']} </td>
		 <td>{$result['Score']} </td>
		</tr>";
	}
	echo $GLOBALS['table_m_obc'];
	//$GLOBALS['count']++;
}
function print_m_sc(){
	m_sc_temp();
	//include 'registration_phpcode.php';
	$conn_temp=mysqli_connect('localhost','root','','Hostel');
	$m_sc_fetch="SELECT * FROM m_sc_test;";
	//$q="select * from book ";
	$m_sc_fetch_run=mysqli_query($conn_temp,$m_sc_fetch);
	//$qrun=mysqli_query($conn,$qs);
	$num=mysqli_num_rows($m_sc_fetch_run);
	while($result=mysqli_fetch_assoc($m_sc_fetch_run)){
		//$e=$result['no'];
		$GLOBALS['table_m_sc'].="<tr>
		<td>{$result['Rank']}</td>
		<td>{$result['Name']}</td>
		<td>{$result['Percentage']} </td>
		 <td>{$result['Score']} </td>
		</tr>";
	}
	echo $GLOBALS['table_m_sc'];
	//$GLOBALS['count']++;
}
function print_f_gen(){
	f_gen_temp();
	//include 'registration_phpcode.php';
	$conn_temp=mysqli_connect('localhost','root','','Hostel');
	$f_gen_fetch="SELECT * FROM f_gen_test;";
	//$q="select * from book ";
	$f_gen_fetch_run=mysqli_query($conn_temp,$f_gen_fetch);
	//$qrun=mysqli_query($conn,$qs);
	$num=mysqli_num_rows($f_gen_fetch_run);
	while($result=mysqli_fetch_assoc($f_gen_fetch_run)){
		//$e=$result['no'];
		$GLOBALS['table_f_gen'].="<tr>
		<td>{$result['Rank']}</td>
		<td>{$result['Name']}</td>
		<td>{$result['Percentage']} </td>
		 <td>{$result['Score']} </td>
		</tr>";
	}
	echo $GLOBALS['table_f_gen'];
	//$GLOBALS['count']++;
}
function print_f_obc(){
	f_obc_temp();
	//include 'registration_phpcode.php';
	$conn_temp=mysqli_connect('localhost','root','','Hostel');
	$f_obc_fetch="SELECT * FROM f_obc_test;";
	//$q="select * from book ";
	$f_obc_fetch_run=mysqli_query($conn_temp,$f_obc_fetch);
	//$qrun=mysqli_query($conn,$qs);
	$num=mysqli_num_rows($f_obc_fetch_run);
	while($result=mysqli_fetch_assoc($f_obc_fetch_run)){
		//$e=$result['no'];
		$GLOBALS['table_f_obc'].="<tr>
		<td>{$result['Rank']}</td>
		<td>{$result['Name']}</td>
		<td>{$result['Percentage']} </td>
		 <td>{$result['Score']} </td>
		</tr>";
	}
	echo $GLOBALS['table_f_obc'];
	//$GLOBALS['count']++;
}
function print_f_sc(){
	f_sc_temp();
	//include 'registration_phpcode.php';
	$conn_temp=mysqli_connect('localhost','root','','Hostel');
	$f_sc_fetch="SELECT * FROM f_sc_test;";
	//$q="select * from book ";
	$f_sc_fetch_run=mysqli_query($conn_temp,$f_sc_fetch);
	//$qrun=mysqli_query($conn,$qs);
	$num=mysqli_num_rows($f_sc_fetch_run);
	while($result=mysqli_fetch_assoc($f_sc_fetch_run)){
		//$e=$result['no'];
		$GLOBALS['table_f_sc'].="<tr>
		<td>{$result['Rank']}</td>
		<td>{$result['Name']}</td>
		<td>{$result['Percentage']} </td>
		 <td>{$result['Score']} </td>
		</tr>";
	}
	echo $GLOBALS['table_f_sc']."<br>";
	//$GLOBALS['count']++;
}
//if ($GLOBALS['count']>4) {
	//echo "m_gen".$table_m_gen."m_obc".$table_m_obc."m_sc".$table_m_sc."f_gen".$table_f_gen."f_obc".$table_f_obc."f_sc".$table_f_sc;
	
//}


	//echo $table;
		//<th>ID  </th>   
		//</td><td onclick='myfun($e)'>show booking</td>
?>