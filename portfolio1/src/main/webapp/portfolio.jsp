<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포트폴리오</title>
<style>
* {
	margin: 0 auto;
	text-align: center;
}

body {
	margin: 0;
}

table {
	border-spacing: 20px;
	border-collapse: separate;
}

.port-container {
	background-color: #EEF4FB;
	width: 100%;
	min-height: 100vh;
}

.port-title {
	padding-top: 30px;
	margin-bottom: 45px;
	font-size: 40px;
}

.port-div1 {
	width: 70%;
	padding: 35px 30px;
	background-color: white;
	border-radius: 25px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.port-grade1 {
	font-size: 25px;
	margin-bottom: 20px;
}

.port-img {
	width: 33px;
	margin-bottom: 5px;
}

.port-td {
	width: 190px;
	border: 1px solid black;
	padding: 20px 10px;
	background: #f3f7ff;
	border-radius: 20px;
}

.port-a {
	text-decoration: none;
	display: block;
}

@media screen and (max-width: 1024px) {
	table {
		border-spacing: 0;
	}
	
	body, tr {
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		gap: 20px;
	}
	
	.port-td {
		display: block;
	}
}
</style>
</head>
<body>
	<div class="port-container">
		<h1 class="port-title">포트폴리오</h1>
		<div class="port-div1">
			<h2 class="port-grade1">1학년 포트폴리오</h2>
			<table>
				<tr>
					<td class="port-td">
						<a href="./board/00index.jsp" class="port-a">
							<img src="./image/board.png" class="port-img"><br>게시판
						</a>
					</td>
					<td class="port-td">
						<a href="./vote/00index.jsp" class="port-a">
							<img src="./image/vote.png" class="port-img"><br>투표 시스템
						</a>
					</td>
					<td class="port-td">
						<a href="./member/index.jsp" class="port-a">
							<img src="./image/member.png" class="port-img"><br>회원관리
						</a>
					</td>
					<td class="port-td">
						<a href="./pageBoard/00index.jsp" class="port-a">
							<img src="./image/pageBoard.png" class="port-img"><br>페이지 게시판
						</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>