
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*,buy.BuyDAO, buy.BuyDTO, java.util.ArrayList" %>



<% 
  request.setCharacterEncoding("utf-8");

 	BuyDAO dao = new BuyDAO();
 	BuyDTO dto = new BuyDTO();
	String pname = request.getParameter("pname");
  String id = (String)session.getAttribute("id");
  int quantity = Integer.parseInt(request.getParameter("quantity"));
 	

  dto.setQuantity(quantity);
  dto.setId(id);
  dto.setPname(pname);
  
	dao.insertReview(dto);


	response.sendRedirect("buy_list.jsp");
%>



