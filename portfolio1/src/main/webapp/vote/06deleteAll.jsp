<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] voteTopicList = new String[500];
	int[] voteItemList = new int[500];
	String[][] voteItemNameList = new String[500][10];
	int[][] voteResultCounts = new int[500][10];
	int voteCount = 0;
	
	session.setAttribute("voteTopicList", voteTopicList);
	session.setAttribute("voteItemList", voteItemList);
	session.setAttribute("voteItemNameList", voteItemNameList);
	session.setAttribute("voteResultCounts", voteResultCounts);
	session.setAttribute("voteCount", voteCount);
	
	response.sendRedirect("00index.jsp");
%>