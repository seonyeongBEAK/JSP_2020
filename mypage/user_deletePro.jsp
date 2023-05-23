<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="customer.CustomerDTO"%>
<%@page import="customer.CustomerDAO"%>

<%
	request.setCharacterEncoding("utf-8");
	String id= (String)session.getAttribute("id"); 
	String pwd = (String)request.getParameter("pwd");

	CustomerDAO dao = CustomerDAO.getInstance();
	int check = dao.checkUser(id, pwd);
	
	if( check == 1) {	// 비밀번호 일치
		   dao.deleteUser(id);
			 session.invalidate();
		  response.sendRedirect("../Login/login.jsp");
%> 
	  	   <script type="text/javascript">
	         alert('탈퇴완료');
	      </script>
    	<%}

	   else {	// 비밀번호 불일치
	      
	      %>
	      <script type="text/javascript">
	         alert('비밀번호가 일치하지 않습니다');
	      </script>
	     
	      
<%   response.sendRedirect("mypage.jsp");}%>

               