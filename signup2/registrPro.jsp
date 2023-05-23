
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "customer.CustomerDTO, customer.CustomerDAO" %>

<%
			  request.setCharacterEncoding("utf-8");
				CustomerDAO dao = new CustomerDAO();
			  CustomerDTO dto = new CustomerDTO();
			  
		
			
				String id = request.getParameter("id");
				String name = request.getParameter("name");
				String pwd = request.getParameter("pwd");
			  String addr = (String)session.getAttribute("addr");
			  String phone = (String)session.getAttribute("phone");
			  
	
			  
			  dto.setId(id);
			  dto.setPwd(pwd);
			  dto.setName(name);
			  dto.setAddress(addr);
			  dto.setPhone(phone);
			
			  
				dao.insertUser(dto);
				
				
        response.sendRedirect("../main/index.jsp"); //회원가입 후 메인화면으로 이동 
%>






