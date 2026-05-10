<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	

<%
	request.setCharacterEncoding("UTF-8");

	int memberIndex = (int)session.getAttribute("memberIndex");
	int lastNum = (int)session.getAttribute("lastNum");
	String[] noList = (String[])session.getAttribute("noList");	
	String[] idList = (String[])session.getAttribute("idList");	
	String[] pwList = (String[])session.getAttribute("pwList");	
	String[] nameList = (String[])session.getAttribute("nameList");	
	String[] genderList = (String[])session.getAttribute("genderList");	
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	int count = 0;
	for(int i=0; i< memberIndex; i++) {
		if(idList[i].equals(id)) {
			count += 1;
			break;
		}
	}
	
	if(count == 0){
		noList[memberIndex] = "" + (lastNum + 1);
		idList[memberIndex] = id;
		pwList[memberIndex] = pw;
		nameList[memberIndex] = name;
		genderList[memberIndex] = gender;
		
		memberIndex += 1;
		lastNum += 1;
		
		// 전체 회원 수 세션에 저장
		session.setAttribute("memberIndex", memberIndex);
		// 마지막번호 
		session.setAttribute("lastNum", lastNum);
		// 세션에 회원 정보 저장
		session.setAttribute("noList", noList);
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		
		response.sendRedirect("02main.jsp");
	}
	%>

	<jsp:include page="01memberHeader.jsp"/>
	<div align="center">
		<%if(count == 0){ %>	
				
			<h1>회원가입 성공</h1>					
		<%}else{ %>	
			<h1>회원가입 실패</h1>	
		<%} %>
	</div>

