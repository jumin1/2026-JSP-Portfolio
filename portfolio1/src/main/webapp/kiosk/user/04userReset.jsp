<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int orderCount = 0;
	int[] orderCounts = new int[50];

	session.setAttribute("orderCount", orderCount);
	session.setAttribute("orderCounts", orderCounts);

	response.sendRedirect("03userOrder.jsp");
%>