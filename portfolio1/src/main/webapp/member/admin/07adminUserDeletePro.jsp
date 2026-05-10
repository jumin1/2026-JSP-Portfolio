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


	String strIndex = request.getParameter("index");
	int index = Integer.parseInt(strIndex);

	
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
	
	response.sendRedirect("05adminUserList.jsp");
	
%>

	<jsp:include page="01adminHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>회원삭제 성공</h1>
	</div>


