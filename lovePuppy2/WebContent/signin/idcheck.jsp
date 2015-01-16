<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<script type="text/javascript">
	function idok() {
		opener.f.email.value = "${email}";
		opener.f.reEmail.value = "${email}";
		window.close();
	}
	function fun() {
		if (document.frm.email.value == "") {
			alert('아이디를 입력하여 주십시오.');
			document.frm.email.focus();
			return false;
		}
		return true;
	}
	
</script>
</head>
<body>
	<h2>E-mail 중복확인</h2>
	<form name="frm">
	  E-mail<input type=text name="email"> 
	  <input type=submit value="중복 체크" onclick="return fun()">
	  <br>${result}
 	  <c:if test="${empty mVo}">
 	  <input type="button" value="사용" onclick="idok()">
 	  </c:if>
	</form>	
</body>
</html>
