<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="./01adminHeader.jsp"></jsp:include>
<div>
	<h3 style="text-align: center; margin-top: 20px;">상품 추가</h3>
	<form action="04adminAddPro.jsp" method="post">
		<table border="1" style="text-align: left; margin-top: 20px;">
			<tr>
				<td>상품이름</td>
				<td><input type="text" name="itemName" required></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="number" name="itemPrice" required></td>
			</tr>
			<tr>
				<td>개수</td>
				<td><input type="number" name="itemStock" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="제출"></td>
			</tr>
		</table>
	</form>
</div>