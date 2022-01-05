<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.javaex.vo.PersonVo" %>
<%@ page import= "com.javaex.dao.PhoneDao" %>
<%@ page import= "java.util.List" %>

<%

	//PhoneDao를 메모리에 올린다.
	PhoneDao phoneDao = new PhoneDao();

	///////////////////////////////////////////////////
	//저장관련
	//////////////////////////////////////////////////
	
	//파라미터값 가져오기
	/*Request request = new Request();이게 우리가 만들지않아도 기본으로 들어가있음*/
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//테스트
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);

	//전송된 값(파라미터)을 vo객체로 만든다
	PersonVo personVo = new PersonVo(name, hp, company);
	System.out.println(personVo.toString());

	//저장
	phoneDao.personInsert(personVo); 
	
	//전체리스트를 가져온다
	//등록,삭제할때는 새로 입력한 정보만 쓰니까 db에 있는 데이터를 가져올 필요 없어 생략함
	//List<PersonVo> personList = phoneDao.getPersonList();
	//html하고 섞는다
	
	//리다이렉트(이동하고자하는 주소넣기),수정도 수정폼 받고 수정된 리스트가야함
	response.sendRedirect("./list.jsp");
	
	
%>

