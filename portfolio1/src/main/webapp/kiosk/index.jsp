<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	int[] itemNum = new int[50];
	String[] itemName = new String[50];
	int[] itemPrice = new int[50];
	int[] itemStock = new int[50];
	int[] orderCounts = new int[50];
	
	int menuCount = 0;
	int orderCount = 0;
	
	session.setAttribute("itemNum", itemNum);
	session.setAttribute("itemName", itemName);
	session.setAttribute("itemPrice", itemPrice);
	session.setAttribute("itemStock", itemStock);
	
	session.setAttribute("menuCount", menuCount);
	session.setAttribute("orderCount", orderCount);
	
	response.sendRedirect("./user/02userMain.jsp");
%>