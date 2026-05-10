<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int memberIndex = (int)session.getAttribute("memberIndex");
	int lastNum = (int)session.getAttribute("lastNum");
	String[] noList = (String[])session.getAttribute("noList");	
	String[] idList = (String[])session.getAttribute("idList");	
	String[] pwList = (String[])session.getAttribute("pwList");	
	String[] nameList = (String[])session.getAttribute("nameList");	
	String[] genderList = (String[])session.getAttribute("genderList");	
	
	String log = (String)session.getAttribute("log");
	
	int index = 0;
	for(int i = 0; i < memberIndex; i++) {
		if(idList[i].equals(log)) {
			index = i;
			break;
		}
	}
	
	// 다음페이지에서 사용한다. 
	session.setAttribute("index", index);
%>
	<jsp:include page="01memberHeader.jsp"/>
	
	<div align="center">
		<h1>회원정보 수정</h1>
		<form method="post" action="10updatePro.jsp">
			<table border="1">
				<tr>
					<td>번호</td>
					<td ><%= noList[index] %></td>
				</tr>
			
				<tr>
					<td>아이디</td>
					<td ><%= idList[index] %></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="pw" value="<%= pwList[index] %>" style="background: yellow" ></td>				
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="<%= nameList[index] %>" style="background: yellow"></td>				
				</tr>
				<tr>
					<td>성별</td>
					<td style="background: yellow">
					<%
						if(genderList[index].equals("남성")) {
					%>
						<input type="radio" name="gender" value="남" checked="checked">남성
						<input type="radio" name="gender" value="여">여성
					<%
						} else {
					%>
						<input type="radio" name="gender" value="남">남성
						<input type="radio" name="gender" value="여" checked="checked">여성
					<%
						}
					%>
					</td>	
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="입력완료">
					</td>
				</tr>
			</table>
		</form>	
	</div>
