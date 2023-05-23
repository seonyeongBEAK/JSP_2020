<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import = "qna.QnaDTO, qna.QnaDAO" %>
<!DOCTYPE html>


<% 
request.setCharacterEncoding("utf-8");

String dir = application.getRealPath("/uploadFiles"); //uploadFiles 폴더의 절대 경로값 반환
int maxSize = 5*1024*1024;//포스트로 보낸 파일의 크기 ->5MB 크기 지정
String encType = "utf-8";

MultipartRequest multi = null;

//uploadFiles 파일이 있는지 없는지 아래에서 검사하고 있으면 사용 없으면 아래 코드에서 생성
File f = new File(dir);//Flie(String pathname) : 지정된 경로 문자열을 추상적인 경로로 변환하여 새로운 File 객체 생성
                       //abstract pathname : 물리적으로 존재하지는 않는 경로
if(!f.exists())  {      //생성된 객체가 존재하지 않으면 폴더가 없는 것이므로
  f.mkdirs();  }       //해당경로에 디렉토리 생성


  
//request
//savedirectory
//maxPostSize
//encoding
//FileRenamePolocy


multi = new MultipartRequest(request, dir, maxSize, encType, new DefaultFileRenamePolicy());

String author = multi.getParameter("author");
String title = multi.getParameter("title");
String img = multi.getParameter("img");
String id = (String)session.getAttribute("id");
String content = multi.getParameter("content");

String filename = multi.getFilesystemName("img");
String original = multi.getOriginalFileName("img");


String contype = multi.getContentType("filename");

out.println("작성자: " + id +"<br>");
out.println("제목: " + title +"<br>");
out.println("파일명: " + filename +"<br>");
//파일을 서버 폴더에 업로드
//========================================================================
//DB에 작성자, 제목, 파일명을 입력 

	  QnaDAO dao = new QnaDAO();
	  QnaDTO dto = new QnaDTO();

	  dto.setTitle(title);
	  dto.setImg(filename);
	  dto.setContent(content);
	  dto.setId(id);
		dao.insertQna(dto);
		
		 response.sendRedirect("../qna/qna_list.jsp"); 


%>

