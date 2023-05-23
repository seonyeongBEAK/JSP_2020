<!-- 후기 상세화면 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   import = "java.sql.*,qna.QnaDAO, qna.QnaDTO, java.util.ArrayList" %>

<%
    QnaDAO dao = new QnaDAO();
	  int qno = Integer.parseInt(request.getParameter("qno"));//리뷰 게시판 번호 가져오기

	  QnaDTO dto = dao.selectBoard(qno);
	
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

<title>후기 글</title>



</head>

<body>

  <!-- nav: top.jsp -->
    <jsp:include page = "/top/top.jsp" flush = "false"/>
    <!-- end: top.jsp -->

	<article>

		<div class="container" role="main">
			&nbsp

			<h2>후기 글</h2>
			&nbsp
			
	<div class="container">
				<div class="p-t-31 p-b-9">


	<!-- 리뷰 상세게시판 -->
			<form method="post" action="review_update?qno=<%=qno%>">

				<table class="table table-striped"

					style="text-align: center; border: 1px solid #dddddd">

					<thead>
						<tr>
							<th colspan="3"
								style="background-color: #000000; color:#ffffff; text-align: center;">문의사항</th>
						</tr>

					</thead>

					<tbody>
					
					
						<tr>
							<td style="width: 20%;"> 글 제목 </td>
							<td colspan="2"><%=dto.getTitle()%></td>
						</tr>


	<tr>
							<td style="width: 20%;"> 작성자</td>
							<td colspan="2"><%=dto.getId()%></td>
						</tr>
				
						

						<tr>
							<td>다운로드</td>	
							<td colspan="2">
							<a download href ="http://localhost:8080/JSP_FINAL/uploadFiles/<%=dto.getImg()%>">	<%=dto.getImg()%>
							</a></td>
						</tr>

						<tr>
							<td>내용</td>	
							<td colspan="2" style="min-height: 200px; text-align: left;"><%=dto.getContent()%></td>
						</tr>
						

					</tbody>
							</table>	
							

							
<!-- 만약 로그인상태이지 않거나 현재 로그인id(세션)와 작성자가 일치하지 않으면 수정 삭제버튼 숨기기 -->
<%if(session.getAttribute("id") != null) { %>
<%if(session.getAttribute("id").equals(dto.getId())) { %>
							
		<div>
		<button onclick="location.href='qna_delete.jsp?rno=<%=qno%>'" class="btn btn-white btn-animate" type="button">삭제</button>
		</div>				
<%} %>
			<button onclick="location.href='qna_list.jsp'" class="btn btn-white btn-animate" type="button" style="float: right;">목록</button>

<%} %>

		
</form>
</div>
</div>
</div>
</article>
</body>
</html>