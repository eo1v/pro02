<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="https://unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='https://unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='https://unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='https://unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
</head>
<body>
<%
	List<Notice> notiList = (ArrayList<Notice>) request.getAttribute("notiList");
%>
<h2>공지사항 목록</h2>
<table class="tb">
	<thead>
		<tr>연번</tr><tr>제목</tr><tr>작성일</tr>
	</thead>
	<tbody>
	<% for(int i=0;i<notiList.size();i++){
    	 Notice vo = notiList.get(i);%>
		<tr>
			<td><%=vo.getNotiNo() %></td>
			<td><a href="BoardDetailCtrl?notiNo=<%=vo.getNotiNo() %>"><%=vo.getTitle() %></td>
			<td><%=vo.getResdate() %></td>
		</tr>
	<%}%>
	</tbody>
</table>
</body>
</html>