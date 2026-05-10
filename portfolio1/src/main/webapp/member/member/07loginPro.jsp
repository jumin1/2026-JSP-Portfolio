<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int memberIndex = (int)session.getAttribute("memberIndex");
	int lastNum = (int)session.getAttribute("lastNum");
	String[] noList = (String[])session.getAttribute("noList");	
	String[] idList = (String[])session.getAttribute("idList");	
	String[] pwList = (String[])session.getAttribute("pwList");	
	String[] nameList = (String[])session.getAttribute("nameList");	
	String[] genderList = (String[])session.getAttribute("genderList");	
	
	String log = (String)session.getAttribute("log");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int count = 0;
	for(int i=0; i < memberIndex; i++) {
		if(idList[i].equals(id) && pwList[i].equals(pw)){
			count += 1;
			break;
		}
	}
	
	if(count >= 1) {
		session.setAttribute("log", id);
	}else{
		session.setAttribute("log", null);
	}
	
	response.sendRedirect("02main.jsp");
%>
	
	<jsp:include page="01memberHeader.jsp"></jsp:include>
	<div align="center">
		<%if(count >= 1){ %>
		
			<h1>로그인 성공</h1>
			
		<%}else{ %>
		
			<h1>로그인 실패</h1>
			
		<%} %>
	</div>
