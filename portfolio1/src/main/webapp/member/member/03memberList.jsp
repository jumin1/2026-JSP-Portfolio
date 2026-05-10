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
%>

	<jsp:include page="01memberHeader.jsp"/>

	<div align="center">
		<h1>회원전체정보</h1>
		
		<%if(memberIndex > 0){ %>
		
			<table border="1">
				<tr>
					<td>번호</td>
					<td>아이디</td>
					<td>패스워드</td>
					<td>이름</td>
					<td>성별</td>
				</tr>			
				<% for(int i=0; i<memberIndex; i++) { %>
					<tr>
						<td><%= noList[i] %></td>
						<td><%= idList[i] %></td>
						<td><%= pwList[i] %></td>
						<td><%= nameList[i] %></td>
						<td><%= genderList[i] %></td>
					</tr>
				<%}%>		
			</table>
			
		<%} %>
	</div>
