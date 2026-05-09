<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Object obj1 = session.getAttribute("lastNum");
int lastNum = (int) obj1;
%>
<jsp:include page="01boardHeader.jsp"></jsp:include>
<div>
	<h2 class="main-title">게시글 추가하기</h2>
	<form method="post" action="04addBoardPro.jsp">
		<table border="1" class="main-table">
			<tr class="main-tr">
				<td class="main-td1">번호</td>
				<td class="main-td2"><%=lastNum + 1%></td>
			</tr>
			<tr class="main-tr">
				<td class="main-td1">작성자</td>
				<td class="main-td2"><input type="text" name="writer"></td>
			</tr>
			<tr class="main-tr">
				<td class="main-td1">제목</td>
				<td class="main-td2"><input type="text" name="title"></td>
			</tr>
			<tr class="main-tr">
				<td class="main-td1">내용</td>
				<td class="main-td2"><textarea rows="10" cols="30"
						name="content"></textarea></td>
			</tr>
			<tr class="main-tr">
				<td colspan="2"><input type="submit" value="작성완료"></td>
			</tr>
		</table>
	</form>
</div>