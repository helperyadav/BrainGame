<?php
/*
 * Created on Nov 9, 2014
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
 
 require_once('DB.php');
 
 $test = new ReadPuzzle("https://test.com");
 
 echo $test->render();
 
 
 
 class ReadPuzzle {
 	private $baseUrl ;
	 function __constructor($baseUrl){
	 	$this->$baseUrl = $baseUrl;
	 }
	 
	 public function render(){
	 	$r = '';
	 	
	 	$r .='test';
	 	
	 	return $r;
	 }
 }
?>