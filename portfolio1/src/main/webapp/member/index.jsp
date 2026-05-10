<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
	String[] noList = new String[1000];
	String[] idList = new String[1000];
	String[] pwList = new String[1000];
	String[] nameList = new String[1000];
	String[] genderList = new String[1000];
	
	int memberIndex = 0;
	int lastNum = 0;
	
	session.setAttribute("log", null);
	
	session.setAttribute("memberIndex", memberIndex);
	session.setAttribute("lastNum", lastNum);
	session.setAttribute("noList", noList);
	session.setAttribute("idList", idList);
	session.setAttribute("pwList", pwList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("genderList", genderList);
	
	session.setAttribute("idAdmin", "admin");
	session.setAttribute("pwAdmin", "admin");
	
	response.sendRedirect("member/02main.jsp");
%>
