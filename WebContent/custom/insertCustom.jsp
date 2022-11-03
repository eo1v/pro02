<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Notice vo = (Notice) request.getAttribute("notice");
%>
<div class="content container" id="content">
	<h2 class="title">고객 정보 입력</h2>
	<form name="frm1" id="frm1" action="../InsertCustomCtrl" method="post">
		<table class="table">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="cusId" id="cusId" placeholder="3~12글자 입력" class="form-control" autofocus required/>
						<input type="button" name="cusId2" id="cusId2" value="아이디 중복 확인" class="btn btn-primary" onclick="idCheck()" required/>
						<input type="hidden" name="idck" value="no">
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="cusPw" id="cusPw" placeholder="****" class="form-control" required/></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="cusPw2" id="cusPw2" placeholder="비밀번호 확인 입력" class="form-control" required/></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="cusName" id="cusName" placeholder="이름 입력" class="form-control" required></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address1" id="address1" class="form-control" placeholder="주소입력">
					
						<input type="text" name="address2" id="address2" class="form-control" placeholder="상세주소입력" ></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="tel" name="tel" id="tel" class="form-control" placeholder="010-****-****" required ></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-Success" value="회원가입">
			<input type="reset" name="reset-btn" class="btn btn-danger" value="취소">
			<a href="../GetBoardListCtrl" class="btn btn-primary">목록으로</a>
		</div>
	</form>
	<script>

	</script>	
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>