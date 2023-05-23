
<!-- 후기 게시판 글 목록 화면 -->
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*,product.ProductDAO, product.ProductDTO, java.util.ArrayList" %>
<%
	ProductDTO dto = new ProductDTO();
	ProductDAO dbPro = new ProductDAO();
   ArrayList<ProductDTO> dtos = dbPro.listProduct();
%>


<!DOCTYPE html>
<html>
<head>

<meta name="viewprot" content="width=device-width, initial-scale=1">


<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css">
<script src="vendor/jquery/jquery-3.2.1.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script src="vendor/jquery/jquery-2.2.2.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<link rel="stylesheet" href="css/button.css">

<link rel="stylesheet" href="js/button.js">
<link rel="stylesheet" href="css/style.css">

<title>상품 목록</title>



</head>

<body class="goto-here" oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>

    <!-- nav: top.jsp -->
    <jsp:include page = "/top/top.jsp" flush = "false"/>
    <!-- end: top.jsp -->
	  
<article>

		<div class="container" role="main">
&nbsp

			<h2>농산물 품목</h2>
&nbsp




<div class="container"></div>
	<table class="table table-hover">
	<thead>
	<tr>
		<th>사진</th>
		<th>가격</th>
		<th>등록날짜</th>
	  <th>소개</th>
	</tr>
	</thead>
	</div>
	<%
	//5. 결과집합 처리
		for(int i=0; i<dtos.size(); i++){
		    dto = dtos.get(i);
		    String pid = dto.getPid();
        String pname = dto.getPname();
        String price = dto.getPrice(); 
    	  String pimg = dto.getPimg();
        Timestamp pdate = dto.getPdate();
        String info= dto.getInfo();
	%>
	
	<%--테이블의 한 행을 클릭하면 게시판번호에 맞는 공고의 상세정보를 볼 수 있다. --%>
		<tr onclick="location.href= 'product_detail.jsp?pid=<%=pid%>'"> 
			<td> <img src="images/<%=pimg%>" width=200 height=200></td>
				<td><%=price %></td>
				<td><%=pdate.toLocaleString() %></td>
				<td><%=info%></td>
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
			<button onclick="location.href='review_write.jsp'" class="btn btn-white btn-animate" type="button" style="float: right;">글쓰기</button>
		</div>
					</footer>
</div>


<script src="bootstrap/jquery/jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>