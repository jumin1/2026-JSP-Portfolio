<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
int quantity = Integer.parseInt(request.getParameter("quantity"));

int[] itemStock = (int[]) session.getAttribute("itemStock");
int orderCount = (int) session.getAttribute("orderCount");

int[] orderCounts = (int[]) session.getAttribute("orderCounts");
if(orderCounts == null) {
	orderCounts = new int[50];
}

if(itemStock[targetIndex] >= quantity) {
	itemStock[targetIndex] -= quantity;
	orderCounts[targetIndex] += quantity;
	orderCount += quantity;
}

session.setAttribute("itemStock", itemStock);
session.setAttribute("orderCounts", orderCounts);
session.setAttribute("orderCount", orderCount);

response.sendRedirect("03userOrder.jsp");
%>