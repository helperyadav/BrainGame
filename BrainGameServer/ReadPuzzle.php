<?php

/*
 * Created on Nov 9, 2014
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */

include 'DB.php';

$test = new ReadPuzzle("https://test.com");

//echo $test->render();
$test->get_puzzle();


class ReadPuzzle {
	private $baseUrl;
	private $myDB;
	function __constructor($baseUrl) {

		$this-> $baseUrl = $baseUrl;
	}

	public function get_puzzle() {
		$sql = "SELECT * FROM `puzzle` where `PType`='IMG_TEXT'";
		$myDB = DB::get_db();
		$result = $myDB->query($sql);
		
		$data = array();

		while ($row = $result->fetch_object()) {
			$data[$row->PId] = $row;
		    //array_push($data, $row);
		    //$data->
		}// foreach ($data as $row) {
		echo json_encode($data);
		
	}

	public function render() {
		$r = '';

		//$r .= 'test';

		return $r;
	}
}



?>
