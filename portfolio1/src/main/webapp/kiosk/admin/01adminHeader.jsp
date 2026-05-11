<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KIOSK</title>
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
	margin-top: 20px;
}

.header-tr {
	border: 1px solid black;
}
</style>
</head>
<body>
	<div>
		<h1 class="header-title">ADMIN</h1>
		<table border="1">
			<tr class="header-tr">
				<td><button onclick="location.href='./03adminManage.jsp'">재고관리</button></td>
				<td><button onclick="location.href='./04adminAdd.jsp'">상품추가</button></td>
				<td><button onclick="location.href='./05adminSample.jsp'">샘플상품추가</button></td>
				<td><button onclick="location.href='./06adminDeleteAll.jsp'">전부삭제</button></td>
				<td><button onclick="location.href='../user/02userMain.jsp'">돌아가기</button></td>
			</tr>
		</table>
	</div>
</body>
</html>