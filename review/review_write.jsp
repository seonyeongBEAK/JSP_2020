<!-- 후기 게시판 글쓰기 화면 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<!-- nav: top.jsp -->
<jsp:include page = "/top/top.jsp" flush = "false"/>

<title>후기 글쓰기</title>



</head>

<body>

	  <br>

	<article>
	

		<div class="container" role="main">
			&nbsp

			<h2>Review</h2>
			&nbsp
			
			<form method="post" action="review_writePro.jsp" name="form" id="form" role="form">

				<div class="p-t-31 p-b-9">

					<label for="tit">제목</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">

				</div>

				


				<div class="p-t-31 p-b-9">
	
					<label for="reg_id">구매 제품</label>

					<input type="text" class="form-control" name="pname" id="pname" placeholder="구매한 제품을 입력해 주세요">

				</div>
				
				

				<div class="p-t-31 p-b-9">

					<label for="content">내용</label>

					<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>

				</div>

				

					
				
						
			&nbsp	<button type= "submit" class="btn btn-white1 btn-animate" type="button">저장</button> &nbsp
						<button class="btn btn-white1 btn-animate" type="button">취소</button>

			</form>
		
				&nbsp
		<div> &nbsp
			<button onclick="location.href='review_list.jsp'" class="btn btn-white btn-animate" type="button" style="float: right;">목록</button>
		</div>
		
		</div>
	</article>
</body>

</html>