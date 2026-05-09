<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] voteTopicList = (String[])session.getAttribute("voteTopicList");
	int[] voteItemList = (int[])session.getAttribute("voteItemList");
	String[][] voteItemNameList = (String[][])session.getAttribute("voteItemNameList");

	String indexStr = request.getParameter("voteCount");
	int targetIndex = 0;
	if(indexStr == null) {
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
	<form action="04votePro.jsp" method="post">
		<input type="hidden" name="voteIndex" value="<%=targetIndex%>">
		<h3 class="page-title">투표리스트</h3>
		<h3 class="page-title" style="margin-top: 20px;"><%=currentTopic%></h3>
		<table border="1">
			<%for (int i = 0; i < itemCount; i++) {%>
			<tr class="page-tr">
				<td style="width: 45px; height: 30px; padding-left: 5px;">
					<input type="radio" name="votePick" value="<%= i %>" required>
				</td>
				<td style="height: 30px; text-align: center; padding: 5px;">
					<%=voteItemNameList[targetIndex][i]%>
				</td>
			</tr>
			<%}%>
			<tr>
				<td colspan="2" style="text-align: center;">
					<input type="submit" value="투표하기">
				</td>
			</tr>
		</table>
	</form>
</div>