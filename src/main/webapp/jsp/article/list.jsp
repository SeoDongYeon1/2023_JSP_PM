<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
</head>
<body>
	<h1>게시물 리스트</h1>
	
	<div><a href="../home/main">메인 페이지로 이동</a></div>

	<table style="border-collapse: collapse; border-color: green;" border="2px">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
		
		<%for(Map<String, Object> articleRow : articleRows) {
		%>		
		<tr style = "text-align: center;">
			<td><%=articleRow.get("id") %></td>
			<td><%=articleRow.get("regDate") %></td>
			<td><a href="detail?id=<%=articleRow.get("id")%>"><%=articleRow.get("title") %></a></td>
		</tr>
		<%} %>
	</table>
</body>
</html>