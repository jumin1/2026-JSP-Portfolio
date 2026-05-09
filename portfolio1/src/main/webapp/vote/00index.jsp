<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] voteTopicList = new String[500];
	int[] voteItemList = new int[500];
	int voteCount = 0;
	String[][] voteItemNameList = new String[500][10];
	int[][] voteResultCounts = new int[500][10];
	
	session.setAttribute("voteTopicList", voteTopicList);
	session.setAttribute("voteItemList", voteItemList);
	session.setAttribute("voteCount", voteCount);
	session.setAttribute("voteItemNameList", voteItemNameList);
	session.setAttribute("voteResultCounts", voteResultCounts);
	
	response.sendRedirect("02openVote.jsp");
%>
