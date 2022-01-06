<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%
	//PhoneDao를 메모리에 올린다.
	PhoneDao phoneDao = new PhoneDao();	
	
	//파라미터값 가져오기	
	int personId = Integer.parseInt(request.getParameter("id"));//id는 프라이머리키값
	
	//삭제(int count=0이 들어가는 이유)
	int count = phoneDao.personDelete(personId);
	
	if(count>0){
		//삭제성공
	}else{
		//삭제에 실패(/count가 0이 나왔다면 내가 의도한대로 안나왔다는걸 알수있음)
	}
	
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