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
 
  <!-- javascript -->
  <script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
  <script type="text/javascript" src="js/jquery.plugin.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>  
   
  <!-- <script type="text/javascript" src="js/jquery.numeric.min.js"></script> -->
  <!-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> -->
  
  <script type="text/javascript" src="js/alert.js"></script>
  <!-- <script type="text/javascript" src="js/map.js"></script> -->


<!-- jquery ui -->
 <!-- <link rel="stylesheet" href="css/jquery-ui.min.css">
  <link rel="stylesheet" href="css/jquery-ui.theme.min.css">
  <script type="text/javascript" src="js/jquery-ui.min.js"></script>  -->

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyApe4x8o7dY5K7VzPJx07j1u95-GlSgOhs&signed_in=false&callback=initMap"></script>
<!-- <script src="http://maps.googleapis.com/maps/api/js?v=3&amp;sensor=false"></script> -->



<style>
body{
 	height: 100%;
	margin:0px;
	padding:0px;
	overflow:hidden;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	color: #5f5f5f;
	
	/* background: #f1f1f1; */
}

#monitorCont{
	margin:12px 12px 12px 12px;
	/* width:1000px; */
	width:98%;
	height:744px;
}
#title{
	width: 100%;
	height:5%;
	/* border: 1px solid gray; */
	
	font-size: 20px;
    font-weight: bold;
    text-align: center;
    color:white;
}

#title .title_left{
	float:left;
	width:60%;
 	/* background-color:#e0dada; */
    display:inline-block;
    color:white;
    
  /*   background-image: url(images/back_table_head.png);
    background-size: 100% 100%; */
}

#title .title_right{
	text-align:right;
	float:left;
	width:40%; 
 	background-color: #b3b3b3;    
    display:inline-block;
    color: #f2f2f2;
    padding-right:12px;
    
    background: rgba(147,206,222,1);
background: -moz-linear-gradient(left, rgba(147,206,222,1) 0%, rgba(117,189,209,1) 41%, rgba(73,165,191,1) 100%);
background: -webkit-gradient(left top, right top, color-stop(0%, rgba(147,206,222,1)), color-stop(41%, rgba(117,189,209,1)), color-stop(100%, rgba(73,165,191,1)));
background: -webkit-linear-gradient(left, rgba(147,206,222,1) 0%, rgba(117,189,209,1) 41%, rgba(73,165,191,1) 100%);
background: -o-linear-gradient(left, rgba(147,206,222,1) 0%, rgba(117,189,209,1) 41%, rgba(73,165,191,1) 100%);
background: -ms-linear-gradient(left, rgba(147,206,222,1) 0%, rgba(117,189,209,1) 41%, rgba(73,165,191,1) 100%);
background: linear-gradient(to right, rgba(147,206,222,1) 0%, rgba(117,189,209,1) 41%, rgba(73,165,191,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#93cede', endColorstr='#49a5bf', GradientType=1 );
}

#frame_1 {
	float:left;
	display:block;
	width: 100%;
	height:41%;
	border: 2px solid  #cfcfcf;
}
#frame_2 {
	float:left;
	display:block;
	width: 60%;
	height:48%;
	border: 2px solid  #cfcfcf;
}
#frame_3 {
	float:left;
	display:block;
	width: 40%;
	height:48%;
	border: 2px solid  #cfcfcf;
}

.team_li{
	line-height:0.4;
	font-size:16px;
}
 #map {
	width: 100%;
      height: 93%;
 }
 
 #map_title{
 	/* background-color: #e0dada; */
    color: #333;
    font-size: 17px;
    font-weight: bold;
    height: 7%;
    text-align: center;
    z-index:999;
 }
 
 #list_title{
    font-size: 17px;
    font-weight: bold;
    color: white;
 	height:7%;
 	text-align:center;
 }
 #cctv_title{
    /* background-color:#e0dada; */
    color:#333;
    
    font-size: 17px;
    font-weight: bold;
    
 	height:7%;
 	text-align:center;
 }
 .profile_view {
	 font-family: "Nanum Gothic", sans-serif;
 }
 
 .profile_view li{
 	font-size: 22px;
 	line-height:1.7;
 }
  .profile_view ul{
 	margin-bottom:0px;
 }
 
 .alertbox {
    padding: 10px;
    background-color: #f44336; /* Red */
    color: white;
    font-weight:bold;
    font-size:20px;   
 }
 
 #view_reason{
    font-size: 20px;
    vertical-align: middle;
    margin-top: 10px;
     
  }

/* The close button */
.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

/* When moving the mouse over the close button */
.closebtn:hover {
    color: black;
}

.modal_header{
	padding:0px;
	border-bottom:0px;
	font-size:21px;
	font-weight:bold;
}

.modal-body{
	padding: 0px 0px 10px 19px;
}

/* #monitor_view{
    margin: 12px 12px 12px 12px;
   
    width:100%;	
    height: 744px;
}
 */

.nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus 
{
	color:#333;
	font-weight: bold;
	background-color:white;
	/* border-bottom: 4px solid #337ab7; */
     background-color: #86c7d8;
}


.team_tab{
	width:100%;
	height:100%;
	 border-radius: 0.25em;
    -moz-border-radius: 0.25em;
    -webkit-border-radius: 0.25em;
}

.border-box {
	 border-radius: 0.25em;
    -moz-border-radius: 0.25em;
    -webkit-border-radius: 1.25em;
}

.helmet_ball{
	position: absolute;
	display:block;
    top: 0px;
    left: 81%;
    width: 20px;
    height: 20px;    
    border-radius: 20px;
}

.grad_green{
	background: rgba(210,255,82,1);
background: -moz-linear-gradient(left, rgba(210,255,82,1) 0%, rgba(145,232,66,1) 100%);
background: -webkit-gradient(left top, right top, color-stop(0%, rgba(210,255,82,1)), color-stop(100%, rgba(145,232,66,1)));
background: -webkit-linear-gradient(left, rgba(210,255,82,1) 0%, rgba(145,232,66,1) 100%);
background: -o-linear-gradient(left, rgba(210,255,82,1) 0%, rgba(145,232,66,1) 100%);
background: -ms-linear-gradient(left, rgba(210,255,82,1) 0%, rgba(145,232,66,1) 100%);
background: linear-gradient(to right, rgba(210,255,82,1) 0%, rgba(145,232,66,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d2ff52', endColorstr='#91e842', GradientType=1 );
}

.grad_red{
	background: rgba(248,80,50,1);
background: -moz-linear-gradient(left, rgba(248,80,50,1) 0%, rgba(241,111,92,1) 50%, rgba(246,41,12,1) 51%, rgba(240,47,23,1) 71%, rgba(231,56,39,1) 100%);
background: -webkit-gradient(left top, right top, color-stop(0%, rgba(248,80,50,1)), color-stop(50%, rgba(241,111,92,1)), color-stop(51%, rgba(246,41,12,1)), color-stop(71%, rgba(240,47,23,1)), color-stop(100%, rgba(231,56,39,1)));
background: -webkit-linear-gradient(left, rgba(248,80,50,1) 0%, rgba(241,111,92,1) 50%, rgba(246,41,12,1) 51%, rgba(240,47,23,1) 71%, rgba(231,56,39,1) 100%);
background: -o-linear-gradient(left, rgba(248,80,50,1) 0%, rgba(241,111,92,1) 50%, rgba(246,41,12,1) 51%, rgba(240,47,23,1) 71%, rgba(231,56,39,1) 100%);
background: -ms-linear-gradient(left, rgba(248,80,50,1) 0%, rgba(241,111,92,1) 50%, rgba(246,41,12,1) 51%, rgba(240,47,23,1) 71%, rgba(231,56,39,1) 100%);
background: linear-gradient(to right, rgba(248,80,50,1) 0%, rgba(241,111,92,1) 50%, rgba(246,41,12,1) 51%, rgba(240,47,23,1) 71%, rgba(231,56,39,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f85032', endColorstr='#e73827', GradientType=1 );
}
</style>
<script>
var map;
var markers = [];

var center = {lat: 37.577839, lng: 126.892242};

var pos_team1, pos_team2, pos_team3 ;
/* 
var team1_1 = {lat: 37.577739, lng: 126.892252};
var team1_2 = {lat: 37.577839, lng: 126.892042};//car
var team1_3 = {lat: 37.577639, lng: 126.891892};

var team2_1 = {lat: 37.584, lng: 126.892252};
var team2_2 = {lat: 37.584, lng: 126.891842};//car
var team2_3 = {lat: 37.584, lng: 126.891692};

var team3_1 = {lat: 37.577132, lng: 126.873};
var team3_2 = {lat: 37.577132, lng: 126.8732};//car
var team3_3 = {lat: 37.577132, lng: 126.8734};
 */
 

/* var icon_person = 'images/person.png';
var icon_car = 'images/truck.png';
var icon_danger = 'images/danger.png';
 */
 var icon_person = 'images/person2.png';
 var icon_truck = 'images/truck2.png';
 var icon_warning = 'images/warning2.png';
 var icon_danger = 'images/danger2.png';
 var obj_array = new Array();
 var worker_item;
 var last_team_no = 1;
 
 var isIframePopup = false;
 function popupMap(){
	 if( !isIframePopup ){
		 isIframePopup = true;
 		$('#temp_view').hide();
 		$('#monitor_view').show();
	 }
 }	
 
$(document).ready(function() {
	initMap();
	
	window.setInterval(getWorkerInfo, 2000);
	getWorkerInfo();
	
	setModalData(1, 2);
	//$('#btn_modal').click(); 
	
	//getWorkerInfo();
	
	//google.maps.event.addDomListener(window, 'load', initMap);
	//var pop = window.open("login","pop","width=1024,height=768, scrollbars=yes, resizable=yes, modal=yes");
	
	$('#temp_view').hide();
	//iframe_popup_test();
	
});
/* 
function iframe_popup_test(){
	$('#temp_view').show();
 	$('#monitor_view').hide();
	window.setInterval(popupMap, 5000);
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
	
function onSuccess_worker(json, status){
	worker_item = JSON.parse(json).worker_item;
	
	initTeamList();
}

/**google map 제어**/
window.initMap = function(){
	
	    map = new google.maps.Map(document.getElementById('map'), {
	    zoom: 16,
	    center: center,
		minZoom : 10,
		maxZoom : 19,
		mapTypeId : google.maps.MapTypeId.ROAD,
		disableDefaultUI : false,	
		mapTypeControl : false,
		draggable : true,
		panControl : false
	  });


 // $('[class*=g-logo]').hide();
}

function setMarker(team_no, position, title, image, zIndex, animation){
	  var marker = new google.maps.Marker({
	    position: position,
	    map: map,
	    title: title,
	    icon: image,
	    team_no : team_no,
	    zIndex: zIndex,
	    animation: animation
	    
	  });
	  
	  marker.addListener('click', function() {
			//var id = this.id;
			var team_no = this.team_no;
			
			selectTeam(team_no, true);
			
			
			//$( "#test11" ).effect('drop', {color: '#4BADF5'}, 2000);
			//map.animateCamera(CameraUpdateFactory.newLatLngZoom(team3_1, ZOOM_FACTOR))
	  });
	  
	  markers.push(marker);
}

var idx = 0;
function refreshImage(){
	var num = idx++ % 3 + 1;
	var img_name_temp ='images/x-' + num + '.png' ;
	
	var cctv_img_1;
	var cctv_img_2;
	var cctv_img_3;
	
	var status_1,status_2, status_3;
	
	if(typeof worker_item != 'undefined' ){
		for (var i = 0; i < worker_item.length; i++) {
			var id = worker_item[i].id;
			var status = worker_item[i].status;
			var img_cctv = worker_item[i].img_cctv;
			
			if(id == 1){
				cctv_img_1 = img_cctv;
				status_1 = status;
			}else if(id == 2){
				cctv_img_2 = img_cctv;
				status_2 = status;
			}else if(id == 3){
				cctv_img_3 = img_cctv;
				status_3 = status;
			}
		}
		//var img_src_base = 'image?virtname=';
	}
	
	
	
	var d = new Date();
//http://192.168.43.26:8000/alarm

	
//	$('#cctv_1').attr('src', img_src_base + cctv_img_1);

/* 	if(status_2 >= 2){
		$('#cctv_2').attr('src', 'http://192.168.43.26:8000/take?a=' +d.getTime());
	} */

	$('#cctv_1').attr('src', 'http://192.168.43.26:8000/take' + '?a=' + d.getTime());
	if(status_3 >= 2 || status_2 >= 2){//강
		
		$('#cctv_3').attr('src', 'http://192.168.43.70:8000/take' + '?a=' + d.getTime());
	
	}else{
		//$('#cctv_1').attr('src', 'images/noimage.png');
		$('#cctv_3').attr('src', 'images/noimage.png');
	
	}
		//$('#cctv_3').attr('src', img_name_temp);
	
			
	
	
	
}

function selectTeam(team_no, isMoveMap){
	last_team_no = team_no ;//initTeam에서 재지정시 사용
	
	$('[id^=team_tab_]').hide();
	$('[id^=team_li_]').removeClass('active');
	$('#team_tab_' + team_no).show();
	$('#team_li_' + team_no).addClass('active');
	
	if(isMoveMap){
		map.setZoom(16);
		if(team_no == 1)
			map.setCenter(pos_team1);
		else if(team_no == 2)
			map.setCenter(pos_team2);
		else 
			map.setCenter(pos_team3);
	}
}


//db - id,
function initTeamList(){
	$('[id^=team_tab_]').html('');
	deleteMarkers();
	
	
	//pos, name, image,
	for (var i = 0; i < worker_item.length; i++) {
		var id = worker_item[i].id;
		var team_no = worker_item[i].team_no;
		var name = worker_item[i].name;
		var phone = worker_item[i].phone;
		var status = worker_item[i].status;
		var job = worker_item[i].job;		
		var etc = worker_item[i].etc;
		var lat = worker_item[i].lat;
		var lng = worker_item[i].lng;
		var img_profile = worker_item[i].img_profile;
		var img_cctv = worker_item[i].img_cctv;
		var helmet = worker_item[i].helmet;
		var address = worker_item[i].address;
		
		setWorkerInfo(team_no,{lat: lat, lng: lng}, name, job,  phone, 'images/' + img_profile , status, helmet,address);
		
		/**팀선택시 위치변경**/
		if(team_no == 1 && job == 1) pos_team1 = {lat : lat, lng : lng};
		else if(team_no == 2 && job == 1) pos_team2 = {lat : lat, lng : lng};
		else if(team_no == 3 && job == 1) pos_team3 = {lat : lat, lng : lng};
		
		/**cctv3번 -강세군**/
		if(id == 3){
			$('#cctv_3_text').html(status);
		}
		
		/* var team_name;
		if(team_no == 1){team_name = '상암1조' }
		else if(team_no == 2){team_name = '상암2조' }
		else if(team_no == 3){team_name = '수색1조' }
		
		setModalData(team_name, status);
		
		if(status == 3)
			$('#btn_modal').click(); */
	}
  	
	refreshImage();
  /* setWorkerInfo(1, team1_1, '엄정한', 1, '010-4321-1584',  'images/1-um.png', 1);
  setWorkerInfo(1, team1_2, '김규호', 2, '010-3695-1120',   'images/2-kim.png',1);
  setWorkerInfo(1, team1_3, '강세군', 2, '010-222-3123',  'images/3-kang.png',2);
  
  setWorkerInfo(2, team2_1, '김진수', 1, '010-2322-4184', 'images/no_person.png', 1);
  setWorkerInfo(2, team2_2, '박정석', 2, '010-3321-2210',   'images/no_person.png',1);
  setWorkerInfo(2, team2_3, '박덕진', 2, '010-232-3123',  'images/no_person.png',1);
  
  setWorkerInfo(3, team3_1, '임지훈', 1, '010-9221-3584',  'images/no_person.png', 1);
  setWorkerInfo(3, team3_2, '이동주', 2, '010-9195-2320',  'images/no_person.png',1);
  setWorkerInfo(3, team3_3, '안지섭', 2, '010-557-3123',   'images/no_person.png',1); */
  /* setMarker(person1, 'person1', icon_person);
  setMarker(person2, 'person2', icon_truck);
  setMarker(person3, 'person3', icon_danger); */
  selectTeam(last_team_no, false);
}

function setModalData(team_name, status){
	var text = team_name + '지역에서 ';
	
	if(status == 1){
		
	}else if(status == 2){
		text += '낙상 사고 발생';
	}else if(status == 3){
		text += '위험 신호 전달';
	}
	
	 var now = new Date();   
	 var nowTime = now.getYear() + "/" + (now.getMonth()+1) + "/" + now.getDate() + " - " + now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds() + "";
	 
	text += ' (' + nowTime + ')';
	
	
	$('#view_reason').html(text);
}

function setWorkerInfo(team_no, position, name, job, phone, portrait, status, helmet, address){
	var icon;
	var zIndex = 0;
	var animation;
	if(status == 2) {
		icon = icon_warning;
		zIndex = 1
		animation = google.maps.Animation.BOUNCE;
	}else if(status == 3) {
		icon = icon_danger;
		zIndex = 2
		animation = google.maps.Animation.BOUNCE;
	}else {
		if(job == 1) icon = icon_truck;
		else if(job == 2) icon = icon_person;
		/* else if(job == 3 ) icon = icon_truck_big;
		else if(job == 4 ) icon = icon_person_big; */
	}
	setMarker(team_no, position, name, icon, zIndex, animation);
	$('#team_tab_' + team_no).append( getWorkerInfoHTML(name, job, phone, portrait,  status, helmet, address) );
}

function getWorkerInfoHTML(name, job, phone, portrait, status, helmet, address){
	var str = '<div class="col-sm-4 " style="height:90%" >'+ //profile_details
  			  '<div class="col-sm-12 well profile_view" style="margin-bottom:0px; width:100%; background-color: #f5f5f5;color:#333;">';
     		  //'<div class="col-sm-12" >';
			if(status == 1){ //ok
		   	 str += '<div class="border-box col-sm-12" style="width:100%;text-align:left;padding-top:5px;">';
			}else if(status == 2){ 
		   	 str += '<div class="border-box col-sm-12" style="width:100%;text-align:left;padding-top:5px;">';
		    }else { 
		   	 str += '<div class="border-box col-sm-12" style="width:100%;text-align:left;padding-top:5px;">';
		    }
     		  
     		//portrait 
      		str += '<div class="right col-sm-5 text-center" style="margin-top: -20px;"><img src=' + portrait + ' style="" alt="" class="img-circle img-responsive">';
      		
      		/* if(helmet == 1)
      			str += '<div class="helmet_ball"><img src="images/green_icon.png"></div>';
      		else 
      			str += '<div class="helmet_ball"><img src="images/red_icon.png"></div>'; */
      			
      		str += '</div>';
    		   //<!--  <h4 class="brief"><i>Digital Strategist</i></h4> -->
    		   
    		str +='<div style="margin-top: -20px;font-weight:bold;"><img src="images/person2.png"> <span class="label label-success" style="font-size:100%">안전모 착용중 </span> </div>';
    		
      		str += '<div class="left col-sm-7" style=""> <h2 style="font-size:32px;line-height:0.6">' + name +'</h2>'+
       			'<ul class="list-unstyled">';
          
       		//info    		
          if(job == 1) str +='<li><i class="fa  fa-automobile"></i>'+ ' 운전자' + '  </li>';
          else str += '<li><i class="fa  fa-child"></i>'+ ' 환경미화원' + '  </li>';
            
      	  str += '<li><i class="fa fa-phone"></i> ' + phone +'</li>'+
         		'</ul></div>' + 
         		'<div class="left col-xs-3">';
         		//+'<div class="btn btn-warning" style="margin-top:5px;padding:10px">';
      	  str+= '</div>';
       
         str+='<div class="col-sm-12" style="height:25px;font-size:16px;"><i class="fa  fa-building-o"></i> ' + address + '</div>'		
         		
      if(status == 1){ 
        	 str += '<div class="progress-bar progress-bar-success "  style="width:100%">'+
         	 		'<i class="fa fa-user"> </i>&nbsp;&nbsp;&nbsp;' + '양 호' +
         			'</div>';
         }else if(status == 2){ 
        	 str += '<div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" style="width:100%">'+
  	 		'<i class="fa  fa-volume-control-phone"> </i>&nbsp;&nbsp;&nbsp;' + '구 조 요 청' +
  			'</div>';
         }else{
        	 str += '<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" style="width:100%">' +
         			'<i class="fa fa-user-times"> </i>&nbsp;&nbsp;&nbsp;' + '낙 상' +
         			'</div>';
         } 
         
          		
     	str +=	'</div></div></div>';
     	
     	/* str += '<div class="col-sm-2" style="padding-top: 2%;">';     	
  		  //status	
   		if(helmet == 1){//on
   			//str += '<i class="fa fa-user fa-2x"></i>';
   			str += '<div class="label label-primary" style="width:100%;display:block;">착 용</div><img src="images/helmet.png" style="height:60px;">  '
   		}else{ 
   			//str += '<i class="fa fa-user-times fa-2x"></i>';
   			str += '<div class="label label-danger" style="width:100%;display:block;">미 착 용</div><img src="images/helmet_off.png" style="height:60px;">  '
   		}
     	str += '</div>'; */
   return str ;
	//<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" style="width:100%">
	
}


/**google map marker **/
//Sets the map on all markers in the array.
function setMapOnAll(map) {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
  }
}

// Removes the markers from the map, but keeps them in the array.
function clearMarkers() {
  setMapOnAll(null);
}

// Shows any markers currently in the array.
function showMarkers() {
  setMapOnAll(map);
}

// Deletes all markers in the array by removing references to them.
function deleteMarkers() {
  clearMarkers();
  markers = [];
}

function viewTotalMap(){
	var temp_center = {lat : 37.565515, lng : 126.941621};
	map.setZoom(12);
	map.setCenter(temp_center);
}

</script>

</head>

<body>
<div id="case1" style="display:none">낙상</div>
<div id="Case2" style="display:none">패닉</div>


<div id="monitorCont" >
<!-- <iframe id="temp_view" style="height:100%;width:100%" width="1024" src="http://www.inven.co.kr"></iframe> --> 

	<div id="title">
		<div class="title_left"> 환경 미화 작업 현황 </div>
		<div class="title_right" >SAINT Monitoring System</div>
	</div>

	<div id="frame_1">
	  <!-- <div class="col-sm-12" id="list_title">리 스 트</div> -->
	  	<div  style="float:left;width:5%"><i class="fa fa-2x  fa-caret-left" style="    margin-left: 21px;"></i></div>
	  	<div style="float:left;width:90%">	 
		<ul class="nav nav-pills nav-justified"> 
			<li id="team_li_1" role="presentation" class="team_li active" onclick="selectTeam(1, true)"><a href="#">상암 1조</a></li> 
			<li id="team_li_2" role="presentation"  class="team_li" onclick="selectTeam(2, true)"><a href="#">상암 2조</a></li> 
			<li id="team_li_3" role="presentation" class="team_li"  onclick="selectTeam(3, true)"><a href="#">수색 1조</a></li> 
		</ul>
		</div>
	 	<div  style="float:left;width:5%"><i class="fa fa-2x fa-caret-right"></i></div>
	 	
		<!--  1조 -->
		<div id="team_tab_1" class="team_tab"></div>
		<div id="team_tab_2" class="team_tab"></div>
		<div id="team_tab_3" class="team_tab"></div>
      
	</div><!-- end of frame_2 -->
	<div id="frame_2">
	
		<div class="col-xs-12" style="padding-top:10px">
		
			<div class="col-xs-6">
				 <div class="col-xs-12 ">
				 	
				 	<div class="panel panel-success">
				 	  <!--  <div id="cctv_1_text" class="panel-heading" style="margin-bottom:0px;padding:0px;">
					   1번 카메라
					   </div> -->
<!-- 					   <img id="cctv_1" src="images/x-1.png"  alt="" class="col-xs-12 img-responsive" style="height:250px;padding:0px"> -->
					   <img id="cctv_1" src="http://192.168.43.26:8000/take"  alt="" class="col-xs-12 img-responsive" style="height:250px;padding:0px">
					   
					 </div>
				 </div>
				
			</div>
			<!-- <div class="col-xs-4">
			 	<div class="col-xs-12 ">2번 카메라</div>
				<img id="cctv_2" src="images/cctv_test.png" alt="" class="col-xs-12 img-responsive" style="height:200px">
			</div> -->
			
			<div class="col-xs-6">
				<div class="panel panel-success">
					<!-- <div id="cctv_3_text"  class="panel-heading" style="margin-bottom:0px;padding:0px;">3번 카메라</div> -->
					<img id="cctv_3" src="http://192.168.43.70:8000/take" alt="" class="col-xs-12 img-responsive" style="height:250px;padding:0px">
				</div>
				</div>
			
		</div>
		<div class="col-xs-12" id="cctv_title">
			실시간 작업자 카메라 View 
		</div>
	</div>
	<div id="frame_3">
		
		 <div class="btn btn-success" onclick="viewTotalMap()" style="    position: absolute;float: right;z-index: 9999;right: 13px;">전체보기</div>
		 <div id="map"></div>
		  <div id="map_title" class="text-center">작 업 현 황</div>	
	</div>
</div>

<!-- 반려사유 보기 -->
<div id="btn_modal" style="display:none" class="btn btn-primary " data-toggle="modal" data-target="#reason_modal"><span class="glyphicon glyphicon-undo"></span> 반려사유 확인</div>
<div class="modal fade" id="reason_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog"><div class="modal-content">
   	<div class="modal-header">
   		<div class="alertbox">
		ALERT
		<span data-dismiss="modal" class="closebtn">&times;</span>
		</div>
   	</div>
      <div class="modal-body">
		    <div id="view_reason" class="tab-content"  >
		    	상암 1조 사고 발생
		    </div>
		
		<!--  <div id="view_button" class="text-right" style="padding-right:5px">
		    <div class="btn btn-default margin-top" data-dismiss="modal"><span class="glyphicon glyphicon-remove" ></span>닫기</div>
		  </div> -->
		  
      </div>     
    </div>
  </div>

</div>

</body>
</html>

