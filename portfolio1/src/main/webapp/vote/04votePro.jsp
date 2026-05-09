<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int[][] voteResultCounts = (int[][])session.getAttribute("voteResultCounts");
	
	int targetIndex = Integer.parseInt(request.getParameter("voteIndex"));
	int pickIndex = Integer.parseInt(request.getParameter("votePick"));
	
	voteResultCounts[targetIndex][pickIndex] += 1;
	response.sendRedirect("05voteStatus.jsp?voteIndex=" + targetIndex);
%>