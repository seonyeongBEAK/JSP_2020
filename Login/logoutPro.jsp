<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	session.invalidate(); //세션해제
	response.sendRedirect("login.jsp"); 
%>


