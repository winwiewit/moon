<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>

<!doctype html>
<html>
<head>
  <title>통합 관리</title>
    
  <script src="js/jquery-1.12.0.min.js" type="text/javascript"></script>
  <link href="../images/ss.ico" rel="icon" type="image/x-icon" />
  <link href="../images/ss.ico" rel="shortcut icon" type="image/x-icon" />
  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 부트스트랩 -->
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
  
  <script>
  function login() {
	 $('#loginForm').submit(); 
  }
  </script>
</head>

<body>
  
    <div class="container size-fix sm" style="width:60%">
        <div class="panel panel-primary">
            <div class="panel-heading">로그인</div>
            <div class="panel-body margin-top">
              <form id="loginForm" name="form" method="post" action="loginProcess" class="form-horizontal">
                    <div class="form-group text-right padding-right">        
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">ID</label>
                        <div class="col-sm-10">
                             <input type="text" id="userid" name="id" class="form-control" autocomplete="off" placeholder="Enter your ID"> 
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label text-right">PW</label>
                        <div class="col-sm-10">
                             <input id="password" type="password" name="password" class="form-control"
                            placeholder="Enter your PASSWORD" onkeypress="if(event.keyCode=='13') login()"> 
                        </div>
                    </div>
                    <div class="text-right padding-bottom padding-right">
                        <a class="btn btn-primary" href="#" onclick="login()">로그인</a>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
 

</body>
</html>