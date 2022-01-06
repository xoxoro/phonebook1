<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>    
<%@ page import="java.util.List" %>

<%
	PhoneDao phoneDao = new PhoneDao();
	int id = Integer.parseInt(request.getParameter("id"));
	//리퀘스트안에 겟파라미터있음-->요청에 파라미터저장

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>심유정 전화번호 수정화면</h1>
			
		<h2>전화번호 수정폼</h2>
			
		<p>전화번호를 수정하려면<br>
		아래 항목을 기입하고 "수정"버튼을 클릭하세요.
		</p>
		
		<%//수정폼을 update.jsp서버에 전송한다%>
		<%//수정을 눌렀을때 내가 선택한 코드값에 해당되는 데이터가 들어가있어야함 겟펄슨을 받아서 updateForm.jsp?id=1이런식으로 만들어지게함%>
		<form action="./update.jsp" method="get">
		이름(name): <input type="text" name="name" value="<%=phoneDao.getPerson(id).getName()%>"><br>
		핸드폰(hp): <input type="text" name="hp" value="<%=phoneDao.getPerson(id).getHp() %>"><br>
		회사(company): <input type="text" name="company" value="<%=phoneDao.getPerson(id).getCompany() %>"><br>
		코드(id): <input type="text" name="id" value="<%= id %>"><br>
		<button type="submit">수정</button>
		</form>
</body>
</html>