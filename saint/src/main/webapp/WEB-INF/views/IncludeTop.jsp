<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8"	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page session="true"%>

<!doctype html>


<html>
<head>
  <title>통합 관리 </title>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
  <link href="images/ss.ico" rel="icon" type="image/x-icon" />
  <link href="images/ss.ico" rel="shortcut icon" type="image/x-icon" />  
 
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
  <link rel="stylesheet" href="css/jquery.datepick.css" type="text/css" media="screen">
  <link rel="stylesheet" href="css/overlay-bootstrap.min.css" media="screen">
  <link rel="stylesheet" href="css/bootstrap-table.css" media="screen">

  <link rel="stylesheet" href="css/font-awesome.min.css">

  <!-- javascript -->
  <script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
  <script type="text/javascript" src="js/jquery.plugin.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>  
  <script type="text/javascript" src="js/jquery.datepick.js"></script> 
  <script type="text/javascript" src="js/jquery.datepick-ko.js"></script>
  <script type="text/javascript" src="js/bootstrap-table.js"></script> 	
 <!-- <script type="text/javascript" src="js/bootstrap-table-filter.js"></script>  -->
 <script type="text/javascript" src="js/jquery.numeric.min.js"></script>
 <script type="text/javascript" src="js/map.js"></script>
 
 <script>
 
 $(function() {		
	 $(".numeric").numeric();//숫자만입력가능
 });
 
 </script>
 
 </head>
 <body> 


<div class="container" >