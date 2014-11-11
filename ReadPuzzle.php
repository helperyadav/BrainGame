<?php

/*
 * Created on Nov 9, 2014
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */

include 'DB.php';

$test = new ReadPuzzle("https://test.com");

echo $test->render();
$test->get_puzzle();


class ReadPuzzle {
	private $baseUrl;
	private $myDB;
	function __constructor($baseUrl) {
		//$myDB = DB :: get_db();

		$this-> $baseUrl = $baseUrl;
	}
 
	public function get_puzzle() {
		$sql = "SELECT * FROM `puzzle`";
		$myDB = DB::get_db();
		$result = $myDB->query($sql);

//		foreach ($result as $row) {
//		    array_push($result, array($row["PId"]=>intval($row["PType"])));
//		}// foreach ($data as $row) {
//		echo json_encode($result);
		
		$query = mysql_query("SELECT * FROM `puzzle`");
		$rows = array();
		while($row = mysql_fetch_assoc($query)) {
		    $rows[] = $row;
		}
		print json_encode($rows);
	}

	public function render() {
		$r = '';

		$r .= 'test';

		return $r;
	}
}



?>
