<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int[] numList = new int[500];
	int[] readCountList = new int[500];
	String[] writerList = new String[500];
	String[] titleList = new String[500];
	String[] contentList = new String[500];
	
	int totalNum = 0;
	int lastNum = 0;
	
	session.setAttribute("numList", numList);
	session.setAttribute("readCountList", readCountList);
	session.setAttribute("writerList", writerList);
	session.setAttribute("titleList", titleList);
	session.setAttribute("contentList", contentList);
	session.setAttribute("totalNum", totalNum);
	session.setAttribute("lastNum", lastNum);
	
	response.sendRedirect("02main.jsp");
%>