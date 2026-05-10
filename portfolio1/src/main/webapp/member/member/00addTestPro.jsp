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
		
		for(int i = 0; i < 10; i++) {
			noList[memberIndex] = "" + (lastNum + 1);
			idList[memberIndex] = "qwer" + (lastNum + 1);
			pwList[memberIndex] = "1234" + (lastNum + 1);
			nameList[memberIndex] = "테스트" + (lastNum + 1);
			genderList[memberIndex] = "남";
			memberIndex += 1;
			lastNum += 1;
		}
		
		session.setAttribute("memberIndex", memberIndex);
		session.setAttribute("lastNum", lastNum);

		session.setAttribute("noList", noList);
		session.setAttribute("idList", idList);
		session.setAttribute("pwList", pwList);
		session.setAttribute("nameList", nameList);
		session.setAttribute("genderList", genderList);
		
		
		response.sendRedirect("03memberList.jsp");
	%>
	<jsp:include page="01memberHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>더미 글 10개를 작성했습니다</h1>
	</div>

