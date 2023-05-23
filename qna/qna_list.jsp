
<!-- 후기 게시판 글 목록 화면 -->
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*, qna.QnaDAO, qna.QnaDTO, java.util.ArrayList" %>
<%
	QnaDTO dto = new QnaDTO();
	QnaDAO dbPro = new QnaDAO();
   ArrayList<QnaDTO> dtos = dbPro.listQna();
%>


<!DOCTYPE html>
<html>
<head>

<meta name="viewprot" content="width=device-width, initial-scale=1">
<title>Q&A</title>

<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css">
<script src="vendor/jquery/jquery-3.2.1.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script src="vendor/jquery/jquery-2.2.2.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<link rel="stylesheet" href="css/button.css">

<link rel="stylesheet" href="js/button.js">
<link rel="stylesheet" href="css/style.css">

<title>후기 목록</title>

</head>

<body class="goto-here" oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <!-- nav: top.jsp -->
    <jsp:include page = "/top/top.jsp" flush = "false"/>
    <!-- end: top.jsp -->
	  
<article>

		<div class="container" role="main">
&nbsp

			<h2>QNA</h2>
&nbsp



<table class="table table-striped">
	<thead>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
	</tr>
	</thead>
	<%
	//5. 결과집합 처리
		for(int i=0; i<dtos.size(); i++){
		    dto = dtos.get(i);
		    int qno = dto.getNo();
		    String title = dto.getTitle();
		    String content = dto.getContent();
		    String img = dto.getImg();
		    String id = dto.getId();
		  
	%>


	<%--테이블의 한 행을 클릭하면 게시판번호에 맞는 공고의 상세정보를 볼 수 있다. --%>
		<tr onclick="location.href= 'qna_detail.jsp?qno=<%=qno%>'"> 
				<td><%=qno%></td>
				<td><%=title %></td>
				<td><%=img%></a></td>
			</tr>
<%} 
	
	
%>
</table>
<hr/>
&nbsp

<div class="text-center" id="paginationBox">
		<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#")"><</a></li>
				<li class="page-item"><a class="page-link" href="#")">1</a></li>
				<li class="page-item"><a class="page-link" href="#")">2</a></li>
				<li class="page-item"><a class="page-link" href="#")">3</a></li>
				<li class="page-item"><a class="page-link" href="#")">4</a></li>
				<li class="page-item"><a class="page-link" href="#")">5</a></li>
				<li class="page-item"><a class="page-link" href="#")">></a></li>
		</ul>
	</div>


		
		<footer class="ftco-footer ftco-section">
		<div>
			<button onclick="location.href='qna_write.jsp'" class="btn btn-white btn-animate" type="button" style="float: right;">글쓰기</button>
		</div>
					</footer>
</div>


<script src="bootstrap/jquery/jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>