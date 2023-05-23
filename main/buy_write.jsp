<!-- 후기 게시판 글쓰기 화면 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import = "java.sql.*,buy.BuyDAO, buy.BuyDTO, java.util.ArrayList" %>

<%
    BuyDAO dao = new BuyDAO();
	  String pname = request.getParameter("pname");//리뷰 게시판 번호 가져오기
	  String id = (String)session.getAttribute("id");

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- jQuery -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css">
<script src="vendor/jquery/jquery-3.2.1.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script src="vendor/jquery/jquery-2.2.2.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<link rel="stylesheet" href="css/button.css">

<link rel="stylesheet" href="js/button.js">
<link rel="stylesheet" href="css/style.css">


<title>상품구매</title>



</head>

<body>

    <!-- nav: top.jsp -->
    <jsp:include page = "/top/top.jsp" flush = "false"/>
    <!-- end: top.jsp -->
    
	  <br>

	<article>

		<div class="container" role="main">
			&nbsp

			<h2>Review</h2>
			&nbsp
			
			<form method="post" action="buy_writePro.jsp" name="form" id="form" role="form">

				<div class="p-t-31 p-b-9">
	
					<label for="reg_id">구매 제품</label>

					<input type="text" class="form-control" name="pname" value="<%=pname %>" placeholder="제품을 입력해 주세요">

				</div>
				
				<div class="p-t-31 p-b-9">

					<label for="tit">수량</label>

					<input type="text" class="form-control" name="quantity" id="title" placeholder="몇 KG 구매인지 숫자만 입력해 주세요">

				</div>
				

						&nbsp
						
						<button type= "submit" class="btn btn-white1 btn-animate" type="button">구매</button> &nbsp

			</form>
		
				&nbsp
		<div> &nbsp
			<button onclick="location.href='shop.jsp'" class="btn btn-white btn-animate" type="button" style="float: right;">목록</button>
		</div>
		
		</div>
	</article>
</body>

</html>