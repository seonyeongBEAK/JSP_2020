
<!-- 후기 게시판 글 목록 화면 -->
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*,buy.BuyDAO, buy.BuyDTO, java.util.ArrayList" %>
<%
	BuyDTO dto = new BuyDTO();
	BuyDAO dbPro = new BuyDAO();
   ArrayList<BuyDTO> dtos = dbPro.listPreview();
%>


<!DOCTYPE html>
<html>
<head>

<meta name="viewprot" content="width=device-width, initial-scale=1">
<title>Review List</title>

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

   <!-- nav: top.jsp -->
    <jsp:include page = "/top/top.jsp" flush = "false"/>
    <!-- end: top.jsp -->
    
<article>

		<div class="container" role="main">
&nbsp

			<h2>Review</h2>
&nbsp



<table class="table table-striped">
	<thead>
	<tr>
		<th>번호</th>
		<th>상품</th>
		<th>수량</th>
		<th>작성자</th>
		<th>날짜</th>
	</tr>
	</thead>
	<%
	//5. 결과집합 처리
		for(int i=0; i<dtos.size(); i++){
		    dto = dtos.get(i);
		    int pno = dto.getPno();
		    String pname = dto.getPname();
		    int quantity = dto.getQuantity();
		    Timestamp regdate = dto.getRegdate();
		    String id = dto.getId();
		  
	%>


	<%--테이블의 한 행을 클릭하면 게시판번호에 맞는 공고의 상세정보를 볼 수 있다. --%>
		<tr onclick="location.href= 'Buy_detail.jsp?pno=<%=pno%>'"> 
				<td><%=pno%></td>
				<td><%=pname %></td>
				<td><%=quantity %></td>
				<td><%=id %></td>
				<td><%=regdate%></td>
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
				<li class="page-item"><a class="page-link" href="#")"></a></li>
		</ul>
	</div>


		
		<footer class="ftco-footer ftco-section">
		<div>
			<button onclick="location.href='buy_write.jsp'" class="btn btn-white btn-animate" type="button" style="float: right;">구매하기</button>
		</div>
					</footer>
</div>


<script src="bootstrap/jquery/jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>