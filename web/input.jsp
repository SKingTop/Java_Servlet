<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
	<img src="img.png" alt="#">
	<h1 class="text">Решение уравнения:</h1>
        <form action="Main" method="POST" class="form1">
            <p>Введите A: <input type="text" name="a" class="pole"/></p>
		<p>Введите B: <input type="text" name="b" class="pole"/></p>
		<p>Введите X: <input type="text" name="x" class="pole"/></p>
		<input class="formBtn1" type="submit" name="calcSubmit" value="Решить" />
		<input class="formBtn2" type="reset" name="clearSubmit" value="Очистить" />
	</form>
</div>
</body>
</html>