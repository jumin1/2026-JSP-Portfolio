<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] voteTopicList = (String[])session.getAttribute("voteTopicList");
	int[] voteItemList = (int[])session.getAttribute("voteItemList");
	int voteCount = (int)session.getAttribute("voteCount");
	
	int targetIndex = voteCount - 1;
	String currentTopic = "";
	int itemCount = 0;
	
	if(voteCount > 0) {
		currentTopic = voteTopicList[targetIndex];
		itemCount = voteItemList[targetIndex];
	}
%>
<jsp:include page="01voteHeader.jsp"></jsp:include>
<form action="03voteListPro.jsp" method="post">
	<input type="hidden" name="voteIndex" value="<%= targetIndex %>">
	<div>
		<h3 class="page-title">투표리스트</h3>
		<table border="1">
			<tr class="page-tr">
				<td>투표제목</td>
				<td><%= currentTopic %></td>
			</tr>
			<% for(int i = 1; i <= itemCount; i++) { %>
			<tr class="page-tr">
				<td>항목 <%= i %></td>
				<td><input type="text" name="itemName<%= i %>"></td>
			</tr>
			<% } %>
			<tr class="page-tr">
				<td colspan="2"><input type="submit" value="투표리스트만들기"></td>
			</tr>
		</table>
	</div>
</form>