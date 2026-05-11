<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
	
	int[] itemNum = (int[])session.getAttribute("itemNum");
	String[] itemName = (String[]) session.getAttribute("itemName");
	int[] itemPrice = (int[]) session.getAttribute("itemPrice");
	int[] itemStock = (int[]) session.getAttribute("itemStock");
%>
<style>
.user-title {
	text-align:center;
	margin:20px 0px;
}
.user-table {
	border-collapse: separate;
	width: 90%;
	margin: 0 auto;
	text-align: center;
}
.user-table td {
	padding: 10px;
}
</style>
<jsp:include page="01userHeader.jsp"></jsp:include>
<div>
	<h3 class="user-title">상품 주문 상세</h3>
	
	<form action="05userItemOrderPro.jsp" method="post">
	
		<input type="hidden" name="targetIndex" value="<%= targetIndex %>">
		
		<table border="1" class="user-table">
			<tr>
				<td style="background-color:#f8f9fa; width:30%; font-weight:bold;">번호</td>
				<td><%= itemNum[targetIndex] %></td>
			</tr>
			<tr>
				<td style="background-color:#f8f9fa; font-weight:bold;">이름</td>
				<td><%= itemName[targetIndex] %></td>
			</tr>
			<tr>
				<td style="background-color:#f8f9fa; font-weight:bold;">가격</td>
				<td><%= itemPrice[targetIndex] %>원</td>
			</tr>
			<tr>
				<td style="background-color:#f8f9fa; font-weight:bold;">남은 재고</td>
				<td style="color:gray;"><%= itemStock[targetIndex] %>개</td>
			</tr>
			<tr>
				<td style="background-color:#eef4fb; font-weight:bold; color:#0056b3;">주문수량</td>
				<td>
					<input type="number" name="quantity" value="1" min="1" max="<%= itemStock[targetIndex] %>" required style="text-align:center; width:80px; font-size:16px;">
				</td>
			</tr>
			<tr>
				<td colspan="2" style="padding: 15px;">
					<input type="submit" value="담기" style="padding:8px 30px; cursor:pointer; background-color:#0056b3; color:white; border:none; border-radius:5px; font-size:12px;">
					<input type="button" value="취소" onclick="history.back();" style="padding:8px 30px; cursor:pointer; margin-left:10px; border-radius:5px;  border:none; font-size:12px;">
				</td>
			</tr>
		</table>
	</form>
</div>