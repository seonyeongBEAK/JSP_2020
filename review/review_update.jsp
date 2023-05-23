<!-- 후기 게시판 글쓰기 화면 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import = "java.sql.*,review.ReviewDAO, review.ReviewDTO, java.util.ArrayList" %>

<%
		ReviewDAO dao = new ReviewDAO();
   int rno = Integer.parseInt(request.getParameter("rno"));
	 ReviewDTO dto = dao.selectBoard(rno);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


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


<title>후기 글쓰기</title>

</head>

<body>

    <!-- nav: top.jsp -->
    <jsp:include page = "/top/top.jsp" flush = "false"/>

    
	  <br>

	<article>

		<div class="container" role="main">
			&nbsp

			<h2>리뷰글 수정</h2>
			&nbsp
			
			<form method="post" action="review_updatePro.jsp?rno=<%=rno%>" name="form" id="form" role="form">
			

				<div class="p-t-31 p-b-9">
				
			  <label for="rno">글번호</label>
				
				<input type="text" name="rno" id="rno" value="<%=dto.getRno() %>"  style="border:none; background-color:transparent;">
<br>
				<p><P><p>
				
				
					<label for="tit">제목</label>
	
					<input type="text" class="form-control"  value="<%=dto.getTitle() %>" name="title" id="title">

				</div>
				
				

				<div class="p-t-31 p-b-9">
	
					<label for="reg_id">구매 제품</label>

					<input type="text" class="form-control"  value="<%=dto.getPname()%>" name="pname" id="pname">

				</div>
				
				

				<div class="p-t-31 p-b-9">

					<label for="content">내용</label>

			
			<textarea rows="8" class="form-control"  name="content" id="content"><%=dto.getContent()%></textarea>
				
				


				</div>
				

				
				<p> <p>	<p>

				
						
						<button type="submit" class="btn btn-white1 btn-animate" > 수정</button>
						<button class="btn btn-white1 btn-animate" type="button">취소</button>

						</form>
		
			
		<div>
			<button onclick="location.href='review_list.jsp'" class="btn btn-white btn-animate" type="button" style="float: right;">목록</button>
		</div>
		
		</div>
	</article>
</body>

</html>