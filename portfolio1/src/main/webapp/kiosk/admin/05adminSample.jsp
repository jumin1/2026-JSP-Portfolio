<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int[] itemNum = (int[])session.getAttribute("itemNum");
	String[] itemName = (String[])session.getAttribute("itemName");
	int[] itemPrice = (int[])session.getAttribute("itemPrice");
	int[] itemStock = (int[])session.getAttribute("itemStock");
	
	int menuCount = 0;
	
	String[] sampleNames = {"와퍼","치즈와퍼","몬스터와퍼","통새우와퍼"};
	int[] samplePrices = {4000, 4300, 5000, 4800};
	int[] sampleStocks = {5, 4, 5, 3};
	
	for(int i = 0; i < sampleNames.length; i++) {
		if(menuCount < 50) {
			itemNum[menuCount] = menuCount + 1;
			itemName[menuCount] = sampleNames[i];
			itemPrice[menuCount] = samplePrices[i];
			itemStock[menuCount] = sampleStocks[i];
			menuCount++;
		}
	}
	
	session.setAttribute("itemNum", itemNum);
	session.setAttribute("itemName", itemName);
	session.setAttribute("itemPrice", itemPrice);
	session.setAttribute("itemStock", itemStock);
	session.setAttribute("menuCount", menuCount);
	
	response.sendRedirect("./03adminManage.jsp");
%>