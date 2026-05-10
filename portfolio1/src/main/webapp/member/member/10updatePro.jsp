<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	String[] pwList = (String[])session.getAttribute("pwList");	
	String[] nameList = (String[])session.getAttribute("nameList");	
	String[] genderList = (String[])session.getAttribute("genderList");	
	
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	int index = (int)session.getAttribute("index");
	
	nameList[index] = name;
	genderList[index] = gender;
	pwList[index] = pw;
	
	session.setAttribute("pwList", pwList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("genderList", genderList);	
	
	response.sendRedirect("02main.jsp");
%>
	
	<jsp:include page="01memberHeader.jsp"></jsp:include>
	<div align="center">
		<h1>수정 성공</h1>
	</div>
	
