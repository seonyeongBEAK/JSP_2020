<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ page import = "review.ReviewDTO, review.ReviewDAO" %>

	<jsp:useBean id="dto" class= "review.ReviewDTO">
		<jsp:setProperty name="dto" property="*"/>
	</jsp:useBean>
<% 
	request.setCharacterEncoding("utf-8");
	int rno = Integer.parseInt(request.getParameter("rno")); 
	
	ReviewDAO dbPro = ReviewDAO.getInstance();
	dbPro.deleteReview(rno); 
	response.sendRedirect("review_list.jsp"); 
%> 