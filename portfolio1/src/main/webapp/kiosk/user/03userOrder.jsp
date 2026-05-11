<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int[] itemNum = (int[])session.getAttribute("itemNum");
	String[] itemName = (String[])session.getAttribute("itemName");
	int[] itemPrice = (int[])session.getAttribute("itemPrice");
	int[] itemStock = (int[])session.getAttribute("itemStock");
	
	int menuCount = (int)session.getAttribute("menuCount");
	int orderCount = (int)session.getAttribute("orderCount");
	int[] orderCounts = (int[])session.getAttribute("orderCounts");
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
</style>
<jsp:include page="01userHeader.jsp"></jsp:include>
<div>
	<%if(itemNum == null || menuCount == 0) {%>
	<h3 style="text-align: center; margin-top: 20px;">상품이 준비중입니다</h3>
	<%} else {%>
		<h3 class="user-title">전체목록</h3>
		<table border="1" class="user-table">
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>가격</td>
				<td>재고수량</td>
			</tr>
		<%for(int i = 0; i < menuCount; i++){%>
			<tr>
				<td><%=itemNum[i]%></td>
				<td>
					<a href="05userItemOrder.jsp?targetIndex=<%=i%>" style="text-decoration:none; cursor:pointer; color:blue">
						<%=itemName[i]%>
					</a>			
				</td>
				<td><%=itemPrice[i]%></td>
				<td><%=itemStock[i]%></td>
			</tr>
		<%}%>
		</table>
	<%}%>
	
	<%if(orderCount == 0) {%>
	<h3 style="text-align: center; margin-top: 20px;">아직 주문이 없습니다</h3>
	<%} else {%>
	<h3 class="user-title">주문목록</h3>
	<table border="1" class="user-table">
		<tr>
			<td>주문번호</td>
			<td>상품명</td>
			<td>주문개수</td>
			<td>가격</td>
		</tr>
		<%
		int totalSum = 0;
		int orderIndex = 1;
		for (int i = 0; i < menuCount; i++) {
			if (orderCounts != null && orderCounts[i] > 0) {
				int itemTotalPrice = itemPrice[i] * orderCounts[i];
				totalSum += itemTotalPrice;
		%>
		<tr>
			<td><%=orderIndex++%></td>
			<td><%=itemName[i]%></td>
			<td><%=orderCounts[i]%></td>
			<td><%=itemTotalPrice%>원</td>
		</tr>
		<%}
			}%>
		<tr>
			<td colspan="3" style="font-weight: bold; height:55px;">전체총합</td>
			<td style="font-weight: bold; height:55px;"><%=totalSum%>원</td>
		</tr>
	</table>
	<%}%>
</div>