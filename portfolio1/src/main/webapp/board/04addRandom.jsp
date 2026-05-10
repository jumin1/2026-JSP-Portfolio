<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Object obj1 = session.getAttribute("totalNum");
	int totalNum = (int)obj1;
	Object obj2 = session.getAttribute("lastNum");
	int lastNum = (int)obj2;
	
	Object obj3 = session.getAttribute("numList");
	int[] numList = (int[])obj3;
	Object obj4 = session.getAttribute("readCountList");
	int[] readCountList = (int[])obj4;
	Object obj5 = session.getAttribute("writerList");
	String[] writerList = (String[])obj5;
	Object obj6 = session.getAttribute("titleList");
	String[] titleList = (String[])obj6;
	Object obj7 = session.getAttribute("contentList");
	String[] contentList = (String[])obj7;
	
	for(int i = 0; i < 5; i++) {
		numList[totalNum] = lastNum + 1;
		readCountList[totalNum] = 0;
		writerList[totalNum] = "작성자" + (lastNum + 1);
		titleList[totalNum] = "제목" + (lastNum + 1);
		contentList[totalNum] = "내용" + (lastNum + 1);
		totalNum += 1;
		lastNum += 1;
	}
	
	session.setAttribute("numList", numList);
	session.setAttribute("readCountList", readCountList);
	session.setAttribute("writerList", writerList);
	session.setAttribute("titleList", titleList);
	session.setAttribute("contentList", contentList);
	
	session.setAttribute("totalNum", totalNum);
	session.setAttribute("lastNum", lastNum);
	
	response.sendRedirect("03boardList.jsp");
%>