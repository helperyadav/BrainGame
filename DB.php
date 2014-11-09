<?php
/*
 * Created on Nov 9, 2014
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
 
  //$db = new mysqli("localhost", "root", '', "puzzledb");
  
  class myDB {
  	private $db;
  	
  	public static function __constructor(){
  		$db = new mysqli("localhost", "root", '', "puzzledb");
  	}
  	
  	public static function get_db(){
  		if($empty($db) )
  		
  		return $db;
  	}
  	
  	public static function close() {
  		$db->close();
  	}
  	
  }
 
?>
