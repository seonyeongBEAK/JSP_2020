<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="customer.CustomerDTO"%>
<%@page import="customer.CustomerDAO"%>

<%
  request.setCharacterEncoding("utf-8");
	String id= (String)session.getAttribute("id"); 
	
	CustomerDAO dao = CustomerDAO.getInstance();
	CustomerDTO dto = new CustomerDTO();

	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String phone= request.getParameter("phone");
	String addr= request.getParameter("addr");
	

	dao.updateUser(id, pwd, name, phone, addr);
	
response.sendRedirect("mypage.jsp");
%>