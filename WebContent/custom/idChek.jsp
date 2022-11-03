<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,kr.co.myshop.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div class="fr">
	<h2>아이디 중복 검사</h2>
	<form action="IdChekCtrl" method="post" class="frm" onsubmit="return invalidCheck(this)">
		<input type="text" name="id" id="id" placeholder="3~12 문자 및 숫자 입력" required autofocus>
		<input type="submit" class="btn btn-Success" value="중복확인">
	</form>
	<script>
	function invalidCheck(f){
		var id = f.id.value;
		id = id.trim();
		if(id.length<3 || id.length>12){
			alert("아이디의 글자수는 3글자 이상 12글자 이하 이어야 합니다.");
			return false;
		}
	}
	</script>
</div>
</body>
</html>