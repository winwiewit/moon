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
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/custom.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <!-- javascript -->
  <script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
  <script type="text/javascript" src="js/jquery.plugin.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>  
  <script type="text/javascript" src="js/jquery.numeric.min.js"></script>
  <script type="text/javascript" src="js/alert.js"></script>
  <!-- <script type="text/javascript" src="js/map.js"></script> -->


<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyApe4x8o7dY5K7VzPJx07j1u95-GlSgOhs&signed_in=false&callback=initMap"></script> -->
<!-- <script  src="http://maps.googleapis.com/maps/api/js?v=3&amp;sensor=false"></script> -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<style>

</style>
<script>
function set(status){
	$('#status').val(status);
	$('#loginForm').submit();
}

</script>

</head>

<body>
<form id="loginForm" name="form" method="get" action="set" class="form-horizontal">
	<input id="status" type="hidden" name="status">
</form>

<div class='btn btn-primary' onclick="set(1)">1</div>
<div class='btn btn-primary' onclick="set(2)">2</div>
<div class='btn btn-primary' onclick="set(3)">3</div>
<div class='btn btn-primary'><a href="http://192.168.43.26:8000/alarm">ala</a></div>
                   
</body>
</html>

