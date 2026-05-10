<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
	int index = Integer.parseInt(request.getParameter("index"));
	
	int index2 = 0;
	int[] numList2 = new int[500];
	String[] writerList2 = new String[500];
	int[] readCountList2 = new int[500];
	String[] titleList2 = new String[500];
	String[] contentList2 = new String[500];
	
	for(int i = 0; i < totalNum; i++) {
		if(i != index) {
			numList2[index2] = numList[i];
			writerList2[index2] = writerList[i];
			readCountList2[index2] = readCountList[i];
			titleList2[index2] = titleList[i];
			contentList2[index2] = contentList[i];
			index2 += 1;
		}
	}
	totalNum -= 1;
	numList = numList2;
	writerList = writerList2;
	readCountList = readCountList2;
	titleList = titleList2;
	contentList = contentList2;
	
	session.setAttribute("numList", numList);
	session.setAttribute("writerList", writerList);
	session.setAttribute("readCountList", readCountList);
	session.setAttribute("titleList", titleList);
	session.setAttribute("contentList", contentList);
	session.setAttribute("totalNum", totalNum);
	session.setAttribute("lastNum", lastNum);
	
	response.sendRedirect("03boardList.jsp");
%>