<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String idAdmin = (String)session.getAttribute("idAdmin");
	String pwAdmin = (String)session.getAttribute("pwAdmin");
	
	int count = 0;
	// 관리자가 로그인 한 경우
	if(id.equals(idAdmin) && pw.equals(pwAdmin)){
		session.setAttribute("log", id);
		count = 1;
	}else{
		session.setAttribute("log", null);
	}

	response.sendRedirect("02adminMain.jsp");
%>
	<jsp:include page="01adminHeader.jsp"></jsp:include>
	<%if(count == 1){ %>
	<div align="center">
		<h1>로그인 성공</h1>
	</div>
	<%}else{ %>
	<div align="center">
		<h1>로그인 실패</h1>
	</div>
	<%} %>
