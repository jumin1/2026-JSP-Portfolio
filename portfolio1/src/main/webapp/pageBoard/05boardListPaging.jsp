<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int[] numList = (int[])session.getAttribute("numList");
	String[] writerList = (String[])session.getAttribute("writerList");
	int[] readCountList = (int[])session.getAttribute("readCountList");
	String[] titleList = (String[])session.getAttribute("titleList");
	String[] contentList = (String[])session.getAttribute("contentList");
	int totalNum = (int)session.getAttribute("totalNum");
	int lastNum = (int)session.getAttribute("lastNum");
	
	int pageSize = 5;
	int pageNow = 1;
	String pageNowStr = request.getParameter("pageNow");
	if(pageNowStr != null && !pageNowStr.isEmpty()){
		pageNow = Integer.parseInt(pageNowStr);
	}
	int pageNum = totalNum % pageSize > 0 ? (totalNum / pageSize) + 1 : totalNum / pageSize;
	
	int startIndex = (pageNow - 1) * pageSize;
	int endIndex = startIndex + pageSize - 1;
	
	if(endIndex >= totalNum) {
		endIndex = totalNum - 1;
	}
%>

<jsp:include page="01boardHeader.jsp"></jsp:include>
<div>
	<h1 class="main-title">전체게시글<%=totalNum %>개</h1>
	<%if(totalNum>0){%>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>조회수</td>
		</tr>
		<% for(int i = startIndex; i<= endIndex; i++){ %>
			<tr>
				<td><%= numList[i] %></td>
				<td><a href="09boardInfo.jsp?index=<%= i %>"><%=titleList[i]%></a></td>
				<td><%= writerList[i] %></td>
				<td><%= readCountList[i] %></td>
			</tr>
		<% } %>
	</table>
	<%}%>
</div>
<div style="text-align: center; margin-top: 15px;">
	<%
		for(int i = 1; i <= pageNum; i++) {
			if(i == pageNow){
	%>
				<button><%= i %></button>
	<%
			} else {
	%>
				<button onclick="location.href='?pageNow=<%= i %>'"><%= i %></button>
	<%			
			}
		}
	%>
</div>