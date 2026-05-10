<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style>
* {
	margin: 0 auto;
}

table {
	margin-left: auto;
	margin-right: auto;
	border-collapse: separate;
	text-align: center;
	margin-top: 20px;
}

.header-title {
	text-align: center;
}

.header-tr {
	border: 1px solid black;
}

.main-title {
	text-align: center;
}

.main-table {
	text-align: left;
}

.main-td1 {
	width: 52px;
	font-size: 16px;
}

.main-td2 {
	width: 235px;
}
</style>
</head>
<body>
	<br>
	<div class="header-div">
		<h1 class="header-title">게시판</h1>
		<table border="1">
			<tr class="header-tr">
				<td><button onclick="location.href='02main.jsp'">메인</button></td>
				<td><button onclick="location.href='03boardList.jsp'">전체
						게시글</button></td>
				<td><button onclick="location.href='04addRandom.jsp'">랜덤 게시글(5개) 추가</button></td>
				<td><button onclick="location.href='05addBoard.jsp'">게시글
						쓰기</button></td>
				<td><button onclick="location.href='06deleteAll.jsp'">전부삭제</button></td>
				<td><button onclick="location.href='../portfolio.jsp'">처음으로</button></td>
			</tr>
		</table>
	</div>
	<br>
</body>
</html>