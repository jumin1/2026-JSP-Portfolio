<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	Object obj1 = session.getAttribute("numList");
	int[] numList = (int[])obj1;
	Object obj2 = session.getAttribute("writerList");
	String[] writerList = (String[])obj2;
	Object obj3 = session.getAttribute("readCountList");
	int[] readCountList = (int[])obj3;
	Object obj4 = session.getAttribute("titleList");
	String[] titleList = (String[])obj4;
	Object obj5 = session.getAttribute("contentList");
	String[] contentList = (String[])obj5;
	Object obj6 = session.getAttribute("totalNum");
	int totalNum = (int)obj6;
	Object obj7 = session.getAttribute("lastNum");
	int lastNum = (int)obj7;
	
	int index = (int)session.getAttribute("index");
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	writerList[index] = writer;
	titleList[index] = title;
	contentList[index] = content;
	
	session.setAttribute("numList", numList);
	session.setAttribute("writerList", writerList);
	session.setAttribute("readCountList", readCountList);
	session.setAttribute("titleList", titleList);
	session.setAttribute("contentList", contentList);
	session.setAttribute("totalNum", totalNum);
	session.setAttribute("lastNum", lastNum);
	
	response.sendRedirect("03boardList.jsp");
%>