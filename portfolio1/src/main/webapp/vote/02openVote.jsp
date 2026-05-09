<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] voteTopicList = (String[])session.getAttribute("voteTopicList");
	int[] voteItemList = (int[])session.getAttribute("voteItemList");
%>

<jsp:include page="01voteHeader.jsp"></jsp:include>
<form action="02openVotePro.jsp" method="post">
	<div>
		<h3 class="page-title">투표주제와 개수</h3>
		<table border="1">
			<tr class="page-tr">
				<td>투표 주제</td>
				<td><input type="text" name="topic"></td>
			</tr>
			<tr class="page-tr">
				<td>투표 항목개수</td>
				<td><input type="text" name="itemCount" min="1"></td>
			</tr>
			<tr class="page-tr">
				<td colspan="2"><input type="submit" value="투표리스트만들기"></td>
			</tr>
		</table>
	</div>
</form>