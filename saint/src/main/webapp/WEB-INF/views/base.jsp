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
var isPopupOpen = false;
$(document).ready(function() {
	window.setInterval(getWorkerInfo, 2000);
	
	 
});


/* function popupMap(){
	//idx++;
	
	getWorkerInfo();
	
	//if( !isPopup){
	if( !isPopupOpen && result > 0 ){
		isPopup = true;
		var pop = window.open("monitor","pop","width=1024,height=768, scrollbars=yes, resizable=yes, modal=yes");
	}
} */



function getWorkerInfo() {
	$.ajax({
		type : "GET",
		url : "./json/workerList",				
		data : {},
		cache : false,
		success : onSuccess_worker,
		error : null
	});
}
	
var pop;
function onSuccess_worker(json, status){
	worker_item = JSON.parse(json).worker_item;
	var result = -1 ;
	
	for (var i = 0; i < worker_item.length; i++) {
		var id = worker_item[i].id;
		var team_no = worker_item[i].team_no;
		var status = worker_item[i].status;
		/* var job = worker_item[i].job;		
		var etc = worker_item[i].etc;
		var lat = worker_item[i].lat;
		var lng = worker_item[i].lng;
		var img_profile = worker_item[i].img_profile;
		var img_cctv = worker_item[i].img_cctv; */
		
		if(status != 1){
			result = status;
		}
		
	}
	
	if(result > 0 ){
		if( pop != null ){
			if(! pop.closed){
				pop.focus();
			}else{
				pop = window.open("monitor","pop","width=1270,height=768, scrollbars=no,location=no, resizable=yes, toolbar=no,modal=yes");
			}
		}else{
			pop = window.open("monitor","pop","width=1270,height=768, scrollbars=no,location=no, resizable=yes, toolbar=no,modal=yes");
		}
	}
}
</script>

</head>

<body>

</body>
</html>

