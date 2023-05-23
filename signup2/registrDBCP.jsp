<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*,customer.CustomerDAO, customer.CustomerDTO, java.util.ArrayList" %>
<%
   CustomerDTO dto = new CustomerDTO();
	CustomerDAO dbPro = new CustomerDAO();
   ArrayList<CustomerDTO> dtos = dbPro.listUser();
%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>List</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class ="container">
<h1  class ="text-center font-weight-bold">목록</h1>
<br>
<br>
 <table class ="table table-hover"> 
 <tr>
 <th>아이디</th>
 <th>비밀번호</th>
 <th>이름</th>
 <th>전화번호</th>
 <th>주소</th>
 </tr>
 <%
 //5.결과 집합처리
 for(int i=0; i<dtos.size(); i++){
    dto = dtos.get(i);
    String id = dto.getId();
    String pwd = dto.getPwd();
    String name = dto.getName();
    String phone = dto.getPhone();
    String address = dto.getAddress();
   
    
 %>
 <tr>
 <td><%=id %></td>
 <td><%=name %></td>
 <td><%=pwd %></td>
 <td><%=phone %></td>
  <td><%=address %></td>
 </tr>

 <% } %>
 
  </table>
  <input class="btn btn-primary" type ="button" onclick ="location.href='index.jsp'"value = "홈으로">
  </div>
</body>
</html>