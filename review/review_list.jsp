<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="review.ReviewDAO"%>
<%@page import="review.ReviewDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
 
    
    ReviewDTO dto = new ReviewDTO();
	ReviewDAO dbPro = new ReviewDAO();
   ArrayList<ReviewDTO> dtos = dbPro.listReview();


int numOfPages = 5;
int numOfRecords = 10;

String page_ = request.getParameter("p");
int p = 1;
if(page_ != null && !page_.equals(""))
	p = Integer.parseInt(page_);

	
ArrayList<ReviewDTO> dtosArrayList = dbPro.getListReview(p, numOfRecords);
int count = dbPro.getCount();
out.println(count);

int startNum = p-((p-1)% numOfPages);
int lastNum = (int) Math.ceil((double)count/numOfRecords);

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review List</title>
</head>
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

<body class="goto-here" oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>
   	  <!-- nav: top.jsp -->
    <jsp:include page = "/top/top.jsp" flush = "false"/>
	  
<article>

		<div class="container" role="main">
&nbsp

			<h2>Review</h2>
&nbsp

<div class="search row">
	<div class="col-xs-2 col-sm-2">
		<select name="searchType" class="form-control">
			<option value="t">제목</option>
			<option value="c">내용</option>
			<option value="i">작성자</option>
			<option value="tc">제목+내용</option>
		</select>
	</div>
	<div class="col-xs-10 col-sm-10">
		<div class="input-group">
			<input type="text" name="keyword" id="keyword" class="form-control"/>
			<span class="input-group-btn">
				<button id="searchB" class="btn btn-default">검색</button>
			</span>
		</div>
	</div>
</div>&nbsp


<table class="table table-striped">
	<thead>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>날짜</th>
	</tr>
	</thead>
	<%
	//5. 결과집합 처리
		for(int i=0; i<dtos.size(); i++){
		    dto = dtos.get(i);
		    int rno = dto.getRno();
		    String title = dto.getTitle();
		    String id = dto.getId();
		    Timestamp regdate = dto.getRegdate();
	%>


	<%--테이블의 한 행을 클릭하면 게시판번호에 맞는 공고의 상세정보를 볼 수 있다. --%>
		<tr onclick="location.href= 'review_detail.jsp?rno=<%=rno%>'"> 
				<td><%=rno%></td>
				<td><%=title %></td>
				<td><%=id %></td>
				<td><%=regdate %></td>
			</tr>
<%} 
	
	
%>
</table>
<hr/>
&nbsp

<div class="d-flex justify-content-end">
<span><%=p %></span> / <%=lastNum %> pages
</div>
<div class="text-center" id="paginationBox">
      <ul class="pagination">
       <% if(startNum > 1){ %>
            <li class="page-item"><a class="page-link" href="?p=<%=startNum-1%>"> < </a></li>
            <% }else{ %>
            <li class="page-item"><a class="page-link" style="color:gray" onclick="alert('이전 페이지가 없습니다')" href="#"> < </a></li>
            <% }
      for(int i = 0; i < numOfPages; i++){
         
         if(p==(startNum+i))
            pageContext.setAttribute("colorValue", "orange");
         else
            pageContext.setAttribute("colorValue", "gray");
            
         if(startNum+i <= lastNum){
           %>
           
           <li class="page-item"><a class="page-link" style="color${colorValue}" href="?p=<%=startNum+i %>"><%=startNum+i %></a></li>
           <%  }   
           }
           if(startNum + numOfPages <= lastNum){ %>
           <li class="page-item"><a class="page-link" href="?p=<%=startNum+5 %>"> > </a></li>
       <%  }else{ %>
       <li class="page-item"><a class="page-link" style="color:black" onclick="alert('다음 페이지가 없습니다!')" href="#"> > </a></li>


    <%  } %>
            
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