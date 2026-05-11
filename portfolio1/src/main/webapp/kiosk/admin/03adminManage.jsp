<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int[] itemNum = (int[])session.getAttribute("itemNum");
	String[] itemName = (String[])session.getAttribute("itemName");
	int[] itemPrice = (int[])session.getAttribute("itemPrice");
	int[] itemStock = (int[])session.getAttribute("itemStock");
	int menuCount = (int)session.getAttribute("menuCount");
%>
<style>
	.admin-title {
		text-align:center;
		margin:20px 0px;
	}
	.admin-table {
		border-collapse: seperate;
		width: 90%;
		margin: 0 auto;
		text-align: center;
	}
	.admin-btn {
		width:40px;
		padding:0;
		cursor:pointer;
	}
	.admin-btn:hover {
		background: #e2e6ea;
		border: 1px solid gray;
	}
</style>
<jsp:include page="01adminHeader.jsp"></jsp:include>
<div>
	<h3 class="admin-title">전체목록</h3>
	<%if(itemNum == null || menuCount == 0){%>
		<p style="text-align:center; margin-top:20px;">현재 상품이 없습니다.</p>
	<%} else {%>
	<table border="1" class="admin-table">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>가격</td>
			<td>재고수량</td>
			<td style="width:40px">증가</td>
			<td style="width:40px">감소</td>
			<td style="width:40px">수정</td>
			<td style="width:40px">삭제</td>
		</tr>
		<%for(int i = 0; i < menuCount; i++){%>
		<tr>
			<td><%=itemNum[i]%></td>
			<td><%=itemName[i]%></td>
			<td><%=itemPrice[i]%></td>
			<td><%=itemStock[i]%></td>
			<td><input type="submit" value="증가" class="admin-btn"></td>
			<td><input type="submit" value="감소" class="admin-btn"></td>
			<td><input type="submit" value="수정" class="admin-btn"></td>
			<td><input type="submit" value="삭제" class="admin-btn"></td>
		</tr>
		<%}%>
	</table>
	<%}%>
</div>