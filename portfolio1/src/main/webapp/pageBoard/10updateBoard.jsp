<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Object obj1 = session.getAttribute("numList");
	int[] numList = (int[])obj1;
	Object obj2 = session.getAttribute("writerList");
	String[] writerList = (String[])obj2;
	Object obj3 = session.getAttribute("readCountList");
	int[] readCountList = (int[])obj3;
	Object obj4 = session.getAttribute("titleList");
	String[] titleList = (String[])obj4;
	Object obj5 = session.getAttribute("contentList");
	String[] contentList = (String[])obj5;
	
	Object obj6 = session.getAttribute("totalNum");
	int totalNum = (int)obj6;
	Object obj7 = session.getAttribute("lastNum");
	int lastNum = (int)obj7;
	int index = Integer.parseInt(request.getParameter("index"));
	session.setAttribute("index", index);
%>

<jsp:include page="01boardHeader.jsp" />
<div>
	<h2 class="main-title">게시글 수정</h2>
	<form method="post" action="10updateBoardPro.jsp">
		<table border="1" class="main-table">
			<tr class="main-tr">
				<td class="main-td1">번호</td>
				<td class="main-td2"><%= numList[index]%></td>
			</tr>
			<tr class="main-tr">
				<td class="main-td1">작성자</td>
				<td class="main-td2"><input type="text" name="writer" value="<%= writerList[index] %>"></td>
			</tr>
			<tr>
				<td class="main-td1">조회수</td>
				<td class="main-td2"><%= readCountList[index] %></td>
			</tr>
			<tr class="main-tr">
				<td class="main-td1">제목</td>
				<td class="main-td2"><input type="text" name="title" value="<%= titleList[index] %>"></td>
			</tr>
			<tr class="main-tr">
				<td class="main-td1">내용</td>
				<td class="main-td2"><textarea rows="10" cols="30"
						name="content"><%= contentList[index] %></textarea></td>
			</tr>
			<tr class="main-tr">
				<td colspan="2"><input type="submit" value="수정"></td>
			</tr>
		</table>
	</form>
</div>