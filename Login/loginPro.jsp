<%@page import="customer.CustomerDTO"%>
<%@page import="customer.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
    request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    // CustomerDAO
    CustomerDAO dbPro = new CustomerDAO();
    int check = dbPro.checkUser(id,pwd); //checkUser 반환값 얻어옴
    
    if(check==1){//id,pw 유효한 사용자
    	session.setAttribute("id", id);
    	session.setAttribute("pwd", pwd);
    	response.sendRedirect("../main/index.jsp");
    	
    }else if(check==0){//비밀번호를 잘못 입력한 경우
    	%>
    	<script>
    	alert("비밀번호를 잘못입력하였습니다. 다시 로그인 하시기 바랍니다.");
    	location.href= "../Login/login.jsp";
    	</script>
    <%}else{ //등록되지 않은 경우
    %>
    <script>
    	alert("등록되지 않은 아이디입니다.");
    	location.href= "../Login/login.jsp";
    	</script>
<%
}
%>
    	
    	
    	
    	