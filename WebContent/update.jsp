<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%
	//PhonDao를 메모리에 올린다
	PhoneDao phoneDao = new PhoneDao();
	
	///////////////////////////////////////////////////
	//저장관련
	//////////////////////////////////////////////////
	
	//주소에서 파라미터값을 가져온다
	/*Request request = new Request();이게 우리가 만들지않아도 기본으로 들어가있음*/
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//테스트
	//System.out.println(id);
	//System.out.println(name);
	//System.out.println(hp);
	//System.out.println(company);
	
	//전송된 값(파라미터)을 vo객체로 만든다
	PersonVo personVo = new PersonVo(id, name, hp, company);
	
	//수정
	phoneDao.personUpdate(personVo);
	
	//전체리스트를 가져온다
	List<PersonVo> personList = phoneDao.getPersonList();
	
	//리다이렉트
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