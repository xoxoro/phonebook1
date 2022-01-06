<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%
	int personId = Integer.parseInt(request.getParameter("id"));
	
	//PhoneDao를 메모리에 올린다.
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personDelete(personId);
	//리다이렉트(이동하고자하는 주소넣기)
	//삭제 후 빈화면에 리다이렉트 실행시켜서 리스트로 돌아감
	response.sendRedirect("./list.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>