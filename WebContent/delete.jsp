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
	response.sendRedirect("./list.jsp");
	
	
%>