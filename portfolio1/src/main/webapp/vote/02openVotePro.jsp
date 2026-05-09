<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String topic = request.getParameter("topic");
	int itemCount = Integer.parseInt(request.getParameter("itemCount"));
	
	String[] voteTopicList = (String[])session.getAttribute("voteTopicList");
	int[] voteItemList = (int[])session.getAttribute("voteItemList");
	int voteCount = (int)session.getAttribute("voteCount");
	
	// input에 받은 값 저장
	voteTopicList[voteCount] = topic;
	voteItemList[voteCount] = itemCount;
	
	voteCount += 1;
	session.setAttribute("voteCount", voteCount);
	
	response.sendRedirect("03voteList.jsp");
%>