<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
</head>
<body>
<div class="fr">
	<h2>아이디 중복 검사</h2>
	<form action="idCheckPro.jsp" method="post" class="frm" onsubmit="return joinAlert(this)">
		<input type="text" name="id" id="id" placeholder="5~12문자 및 숮자 입력" required autocomplete>
		<input type="submit" value="중복확인">
	</form>
	<script>
	function invalidCheck(f){
		var id = f.id.value;
		id = id.trim();
		if(id.length<5 || id.length>12){
			alert("아이디의 글자수는 5~12글자 이여야 합니다.");
			return false;
		}
	}
	</script>
</div>
</body>
</html>