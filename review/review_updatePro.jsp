
<%@page import="review.ReviewDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!-- 게시판 글 수정 updatePro -->    
<%@ page import = "review.ReviewDAO,review.ReviewDTO" %>
<% 
	request.setCharacterEncoding("utf-8");
  int rno = Integer.parseInt(request.getParameter("rno"));
	ReviewDTO dto = new ReviewDTO();

	String title = request.getParameter("title");
	String pname = request.getParameter("pname");
	String content= request.getParameter("content");
	
	dto.setTitle(title);
	dto.setRno(rno);
	dto.setPname(pname);
	dto.setContent(content);
	

	ReviewDAO dbPro = ReviewDAO.getInstance();
	dbPro.updateReview(rno, title, pname, content);
	

	


%>


	



