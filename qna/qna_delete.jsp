<%@page import="qna.QnaDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ page import = "qna.QnaDTO, qna.QnaDAO" %>

	<jsp:useBean id="dto" class= "qna.QnaDTO">
		<jsp:setProperty name="dto" property="*"/>
	</jsp:useBean>
<% 
	request.setCharacterEncoding("utf-8");
	int qno = Integer.parseInt(request.getParameter("qno")); 
	
	QnaDAO dbPro = QnaDAO.getInstance();
	dbPro.deleteQna(qno); 
	response.sendRedirect("qna_list.jsp"); 
%> 