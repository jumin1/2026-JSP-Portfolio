<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표 시스템</title>
<style>
* {
	margin: 0 auto;
}

table {
	margin-left: auto;
	margin-right: auto;
	border-collapse: separate;
	margin-top: 20px;
}

.page-title {
	text-align: center;
}

.page-tr {
	border: 1px solid black;
	text-align: left;
}

</style>
</head>
<body>
	<br>
	<div>
		<h1 class="page-title">투표 시스템</h1>
		<table border="1">
			<tr class="page-tr">
				<td><button onclick="location.href='02openVote.jsp'">투표만들기</button></td>
				<td><button onclick="location.href='04vote.jsp'">투표하기</button></td>
				<td><button onclick="location.href='05voteStatus.jsp'">투표현황</button></td>
				<td><button>전부삭제</button></td>
				<td><button onclick="location.href='../portfolio.jsp'">처음으로</button></td>
			</tr>
		</table>
	</div>
	<br>
</body>
</html>