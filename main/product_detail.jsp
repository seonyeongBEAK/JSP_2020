<!-- 후기 상세화면 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   import = "java.sql.*,product.ProductDAO, product.ProductDTO, java.util.ArrayList" %>

<%
    ProductDAO dao = new ProductDAO();
	  String pid = request.getParameter("pid");// 번호 가져오기
	  ProductDTO dto = dao.selectBoard(pid);
	
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
			<form method="post" action="buy_list.jsp?pname=<%=dto.getPname()%>">

				<table class="table table-striped"

					style="text-align: center; border: 1px solid #dddddd">

					<thead>
						<tr>
							<th colspan="3"
								style="background-color: #000000; color:#ffffff; text-align: center;">상품</th>
						</tr>

					</thead>

					<tbody>
					
					
						<tr>
							<td style="width: 20%;"> 상품명 </td>
						  <td colspan="2"><%=dto.getPname()%></td>
						</tr>
						
						
						<tr>
							<td style="width: 20%;"> 소개 </td>
							<td colspan="2"><%=dto.getInfo()%></td>
						</tr>
						
						<tr>
							<td>가격</td>	
							<td colspan="2"><%=dto.getPrice()%></td>
						</tr>

					
						<tr>
							<td>사진</td>	
							<td colspan="2" style="min-height: 100px; text-align: left;"><img src="images/<%=dto.getPimg()%>" width=200 height=200></td>
						</tr>
						
		<div> 
			<button onclick="location.href='buy_write.jsp?pname=<%=dto.getPname()%>'" class="btn btn-white btn-animate" type="button" style="float: right;">구매</button>
		</div>
						

					</tbody>
							</table>	
						</form>	



</div>
</div>
</div>
</article>
</body>
</html>