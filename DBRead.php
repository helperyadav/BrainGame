<?php
/*
 * Created on Nov 2, 2014
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
 $db = new mysqli("localhost", "root", '', "puzzledb");
 $sql = "SELECT * FROM `puzzle`";
$result = $db->query($sql);

echo display_result($result);
 
 
	//header("Content-Type:Application/json");
	//echo "testing start" . '</br>';
	
//	if(!empty($_GET['name'])){
//		$name = $_GET['name'];
//		
//		$response['found'] = "true";
//		$response['data'] = "this is data";
//		
//	}else {
//		// invalid request
//		$response['found'] = "false";
//		$response['data'] = "data not found";
//		echo "test";
//		
//		$json_response = json_encode($response);
//		echo $json_response;
//	}
	
function display_result($result){
	$r = '';
	$r .= '<table>';
	
	while($row = $result->fetch_object()) {
		$r .= '<tr>';
		$r .= '<td style="background-color:#eee">' . $row->PId . '</td>';
		$r .= '<td style="background-color:#eee">' . $row->PType . '</td>';
		$r .= '<td style="background-color:#eee">' . $row->Catagory . '</td>';
		$r .= '<td style="background-color:#eee">' . $row->Question . '</td>';
		$r .= '</tr>';
	}
	
	$r .= '</table>';
	
	return $r;
}
	
 function deliver_response($status, $status_message, $data){
 	header ("HTTP/1.1 $status $status_message");
 	
 	
 }
 
 
 $db->close();
?>
