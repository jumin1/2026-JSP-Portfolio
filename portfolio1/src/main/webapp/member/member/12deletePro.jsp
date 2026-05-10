<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int memberIndex = (int)session.getAttribute("memberIndex");
	String[] noList = (String[])session.getAttribute("noList");	
	String[] idList = (String[])session.getAttribute("idList");	
	String[] pwList = (String[])session.getAttribute("pwList");	
	String[] nameList = (String[])session.getAttribute("nameList");	
	String[] genderList = (String[])session.getAttribute("genderList");	

	String log = (String)session.getAttribute("log");
	
	String pw = request.getParameter("pw");
	int count = 0;
	int index = 0;
	String dbPw = "";
	for(int i=0; i < memberIndex; i++) {
		if(idList[i].equals(log)) {
			count += 1;
			dbPw = pwList[i];
			index = i;
			break;
		}
	}
	
	if(pw.equals(dbPw)) {
		
		String[] noList2 = new String[1000];
		String[] idList2 = new String[1000];
		String[] pwList2 = new String[1000];
		String[] nameList2 = new String[1000];
		String[] genderList2 = new String[1000];
		
		int index2 = 0;
		for(int i = 0; i < memberIndex; i++){
			if(i == index){
				
			}else{
				noList2[index2] = noList[i];
				idList2[index2] = idList[i];
				pwList2[index2] = pwList[i];
				nameList2[index2] = nameList[i];
				genderList2[index2] = genderList[i];
				index2 += 1;
			}
		}
		noList = noList2;
		idList = idList2;
		pwList = pwList2;
		nameList = nameList2;
		genderList = genderList2;
		
		// 한개 줄어듬
		memberIndex -= 1;
		
		session.setAttribute("memberIndex", memberIndex);
		session.setAttribute("noList", noList);
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		
		session.removeAttribute("log");	
		
		response.sendRedirect("02main.jsp");
	}
		
	%>
		
	<jsp:include page="01memberHeader.jsp"/>
	
	<div align="center">
		<%if(count == 1){ %>	
				<h1>회원탈퇴 성공</h1>
		<%}else{ %>
				<h1>회원탈퇴 실패</h1>
		<%} %>
	</div>