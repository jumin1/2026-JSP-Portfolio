<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<style>
.header-tr {
	border: 1px solid black;
}
</style>
</head>
<body>
	<% String log = (String)session.getAttribute("log"); %>
	<div align="center">
		<h1>회원관리페이지</h1>
		<table border="1">
			<tr>
				<%	if(log == null) { %>
				<td><button onclick="location.href='04joinForm.jsp'">회원가입</button></td>
				<td><button onclick="location.href='06loginForm.jsp'">로그인</button></td>
				<%	} else { %>
				<td>[<%=log%> 님 로그인 중.... ]
				</td>
				<td><button onclick="location.href='08logout.jsp'">로그아웃</button></td>
				<td><button onclick="location.href='09updateForm.jsp'">회원정보수정</button></td>
				<td><button onclick="location.href='11deleteForm.jsp'">회원탈퇴</button></td>

				<%	} %>
				<td><button onclick="location.href='03memberList.jsp'">회원전체</button></td>
				<td><button onclick="location.href='../index.jsp'">전부삭제</button></td>
				<td><button onclick="location.href='../admin/02adminMain.jsp'">관리자</button></td>
				<td><button onclick="location.href='00addTestPro.jsp'">랜덤회원10명추가</button></td>
				<td><button onclick="location.href='../../portfolio.jsp'">처음으로</button>
			</tr>
		</table>
	</div>
</body>
</html>