<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
String id= (String)session.getAttribute("id"); 
String pwd = (String)request.getParameter("pwd");
%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
	<title>My Page</title>
	
	
	<script type="text/javascript">
    // F12 버튼 방지
    $(document).ready(function(){
        $(document).bind('keydown',function(e){
            if ( e.keyCode == 123 /* F12 */) {
                e.preventDefault();
                e.returnValue = false;
            }
        });
    });
    
    // 우측 클릭 방지
    document.onmousedown=disableclick;
    status="Right click is not available.";
    
    function disableclick(event){
        if (event.button==2) {
            alert(status);
            return false;
        }
    }
</script>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/farm9.png');">
			<div class="wrap-login100 p-t-190 p-b-30">
					<div class="login100-form-avatar">
						<img src="images/avatar-01.jpg" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
					<%=id%> 님의 마이페이지
					</span>

						

					<div class="container-login100-form-btn p-t-10">
						<button class="login100-form-btn"  onclick="location.href='user_update.jsp'">정보수정</button>
					</div>


					<div class="container-login100-form-btn p-t-10">
						<button class="login100-form-btn" onclick="location.href='user_delete.jsp'">탈퇴하기</button>
					</div>
					

					
					

					<div class="text-center w-full p-t-25 p-b-230">
						<a href="#" class="txt1">
							
						</a>
					</div>
	
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>