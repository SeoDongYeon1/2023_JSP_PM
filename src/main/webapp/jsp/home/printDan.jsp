<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String inputedDan = request.getParameter("dan");
String inputedLimit = request.getParameter("limit");
String color = request.getParameter("color");

if(inputedDan==null) {
	inputedDan = "1";
}
if(inputedLimit==null) {
	inputedLimit = "1";
}
if(color==null) {
	color = "black";
}

int dan = Integer.parseInt(inputedDan);
int limit = Integer.parseInt(inputedLimit);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>구구단 출력</title>
</head>
<body>
	<div style= "color:<%=color %>;">== <%=dan %>단 ==</div>
	
	<% for(int i = 1; i <= limit; i++) {%>
		<div style= "color:<%=color %>;"><%=dan %> * <%=i %> = <%=dan*i %></div>
	<%} %>
</body>
</html>