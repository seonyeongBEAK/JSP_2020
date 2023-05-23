<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import = "review.ReviewDTO, review.ReviewDAO" %>
<!DOCTYPE html>


<% 
  request.setCharacterEncoding("utf-8");
	ReviewDAO dao = new ReviewDAO();
  ReviewDTO dto = new ReviewDTO();
	String pname = request.getParameter("pname");
	String content = request.getParameter("content");
	String title = request.getParameter("title");
  String id = (String)session.getAttribute("id");
  
  dto.setTitle(title);
  dto.setPname(pname);
  dto.setContent(content);
  dto.setId(id);
	dao.insertReview(dto);


	response.sendRedirect("review_list.jsp");
%>
