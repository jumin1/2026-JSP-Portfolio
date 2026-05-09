<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Object obj1 = session.getAttribute("totalNum");
	int totalNum = (int) obj1;
	Object obj2 = session.getAttribute("lastNum");
	int lastNum = (int) obj2;
	
	Object obj3 = session.getAttribute("numList");
	int[] numList = (int[]) obj3;
	Object obj4 = session.getAttribute("readCountList");
	int[] readCountList = (int[]) obj4;
	Object obj5 = session.getAttribute("writerList");
	String[] writerList = (String[]) obj5;
	Object obj6 = session.getAttribute("titleList");
	String[] titleList = (String[]) obj6;
	Object obj7 = session.getAttribute("contentList");
	String[] contentList = (String[]) obj7;
%>

<jsp:include page="01boardHeader.jsp"></jsp:include>

<div>
	<h1 class="main-title">전체게시글 <%= totalNum %>개</h1>
	<% if(totalNum > 0) { %>
		<table border="1">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>조회수</td>
				<td>삭제</td>
				<td>수정</td>
			</tr>
			<% for(int i = 0; i < totalNum; i++){ %>
			<tr>
				<td><%=numList[i]%></td>
				<td>
				<a href="09boardInfo.jsp?index=<%= i %>"><%=titleList[i]%></a>
				</td>
				<td><%=writerList[i]%></td>
				<td><%=readCountList[i]%></td>
				<td><button onclick="window.location.href='07deleteBoard.jsp?index=<%= i %>'">삭제</button></td>
				<td><button onclick="window.location.href='10updateBoard.jsp?index=<%= i %>'">수정</button></td>
			</tr>
			<% } %>
		</table>
	<% } %>
</div>