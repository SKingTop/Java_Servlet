<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="kz.karaev.jsp.Result" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title>Решение уравнения</title>
<link rel="stylesheet" href="main.css"/>
<link rel="shortcut icon" href="icon.png" type="image/png">
</head>
<body>
<div class="main">
	<h1 class="text">Решение уравнения:</h1>
	<p class="text"><%
	Result form = (Result)request.getAttribute("form");

	if (form==null) { out.print("Нет решения!<br/><br/>"); }
	else {
		out.println(String.format("Y = %.2f<br/>",form.getY()));
	}
        %></p>
        <a href="Main" class="backBtn">Назад</a>
</div>
</html>