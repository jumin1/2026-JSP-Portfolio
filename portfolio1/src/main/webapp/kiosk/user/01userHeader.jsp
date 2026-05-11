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
		<h1 class="header-title">KIOSK</h1>
		<table border="1">
			<tr class="header-tr">
				<td><button onclick="location.href='./02userMain.jsp'">메인화면</button></td>
				<td><button onclick="location.href='./03userOrder.jsp'">주문하기(상품리스트)</button></td>
				<td><button onclick="location.href='./04userReset.jsp'">장바구니 초기화</button></td>
				<td><button onclick="location.href='../admin/02adminMain.jsp'">관리자</button></td>
				<td><button onclick="location.href='../../portfolio.jsp'">처음으로</button></td>
			</tr>
		</table>
	</div>
</body>
</html>