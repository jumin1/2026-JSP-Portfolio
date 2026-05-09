<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] voteTopicList = (String[])session.getAttribute("voteTopicList");
	int[] voteItemList = (int[])session.getAttribute("voteItemList");
	String[][] voteItemNameList = (String[][])session.getAttribute("voteItemNameList");
	int[][] voteResultCounts = (int[][])session.getAttribute("voteResultCounts");
	if(voteResultCounts == null) {
		voteResultCounts = new int[500][10];
		session.setAttribute("voteResultCounts", voteResultCounts);
	}
	
	String indexStr = request.getParameter("voteIndex");
	int targetIndex = 0;
	if(indexStr == null){
		int voteCount = (int)session.getAttribute("voteCount");
		targetIndex = voteCount - 1;
	} else {
		targetIndex = Integer.parseInt(indexStr);
	}
	
	String currentTopic = "";
	int itemCount = 0;
	if(targetIndex >= 0 && voteTopicList != null) {
		currentTopic = voteTopicList[targetIndex];
		itemCount = voteItemList[targetIndex];
	}
%>
<jsp:include page="01voteHeader.jsp"></jsp:include>
<div>
	<h3 class="page-title">투표진행상황</h3>
	<h3 class="page-title" style="margin-top: 20px;"><%= currentTopic %></h3>
	<table border="1">
		<tr class="page-tr">
			<td style="width:160px; height:30px; padding-left: 5px;">항목</td>
			<td style="width:55px; height:30px; text-align:center;">개수</td>
		</tr>
		<%for(int i = 0; i < itemCount; i++) {%>
		<tr>
			<td style="width:160px; height:30px; padding-left: 5px;"><%= voteItemNameList[targetIndex][i] %></td>
			<td style="width:55px; height:30px; text-align:center;"><%= voteResultCounts[targetIndex][i] %></td>
		</tr>
		<%}%>
	</table>
</div>