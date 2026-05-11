<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("itemName");
	int price = Integer.parseInt(request.getParameter("itemPrice"));
	int stock = Integer.parseInt(request.getParameter("itemStock"));
	
	int[] itemNum = (int[])session.getAttribute("itemNum");
	String[] itemName = (String[])session.getAttribute("itemName");
	int[] itemPrice = (int[])session.getAttribute("itemPrice");
	int[] itemStock = (int[])session.getAttribute("itemStock");
	
	int menuCount = (int)session.getAttribute("menuCount");
	
	itemNum[menuCount] = menuCount + 1;
	itemName[menuCount] = name;
	itemPrice[menuCount] = price;
	itemStock[menuCount] = stock;
	menuCount += 1;
	
	session.setAttribute("itemNum", itemNum);
	session.setAttribute("itemName", itemName);
	session.setAttribute("itemPrice", itemPrice);
	session.setAttribute("itemStock", itemStock);
	session.setAttribute("menuCount", menuCount);
	
	response.sendRedirect("./03adminManage.jsp");
%>