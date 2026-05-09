<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int targetIndex = Integer.parseInt(request.getParameter("voteIndex"));
	int[] voteItemList = (int[])session.getAttribute("voteItemList");
	String[][] voteItemNameList = (String[][])session.getAttribute("voteItemNameList");
	if(voteItemNameList == null) {
		voteItemNameList = new String[500][10];
		session.setAttribute("voteItemNameList", voteItemNameList);
	}
	int itemCount = voteItemList[targetIndex];
	for(int i = 1; i<= itemCount; i++){
		String itemName = request.getParameter("itemName" + i);
		voteItemNameList[targetIndex][i-1] = itemName;
	}
	
	response.sendRedirect("05voteStatus.jsp");
%>