<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>MyPuppy</title>
<link href="../dist/css/bootstrap.min.css" rel="stylesheet">
<script src="../assets/js/ie-emulation-modes-warning.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../dist/js/bootstrap.min.js"></script>
<script src="../assets/js/docs.min.js"></script>
<script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
<link href="../css/carousel.css" rel="stylesheet">
<link href="../dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../css/signin.css" rel="stylesheet">
<script src="../assets/js/ie-emulation-modes-warning.js"></script>
<script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
<!-- <script type="text/javascript" src="../script/login.js"></script>
<script type="text/javascript" src="../script/idpw.js"></script> -->
</head>
<!-- NAVBAR
================================================== -->
<body>
		<c:choose>
		<c:when test="${empty member}">
			<a name="5"><%@include file="../header.jsp"%></a>
		</c:when>
		<c:otherwise>
			<a name="5"><%@include file="../header2.jsp"%></a>
		</c:otherwise>
	</c:choose>

	<div class="container">

		
		<form action="<%=request.getContextPath()%>/member.do" class="form-signin" method="post">
		
			<h2 class="form-signin-heading">Please Change</h2>

			<label for="email" class="sr-only">Email address</label>
			<input type="email" name="email" id="email" class="form-control" placeholder="${member.email}" required
				autofocus readonly>
				<label for="password" class="sr-only">Password</label>
				<input type="password" name="pw" id="password" class="form-control" placeholder="Password" required> 
				<label for="password2" class="sr-only">Password Confirm</label>
				<input type="password" name="pw2" id="password2" class="form-control" placeholder="Password  Confirm" required> 
				<label for="name" class="sr-only">Name</label> <input type="text" id="name" class="form-control" placeholder="${member.name}" required readonly> 
				<label for="phone" class="sr-only">Phone Number</label> 
				<input type="text" name="phone" id="phone" class="form-control" placeholder="Phone Number" required>
				<label for="local" class="sr-only">Local</label>
				<input type="text" name="local" id="local" class="form-control" placeholder="Local" required>
			<input type="hidden" value="update"  name="command">
			<button class="btn btn-lg btn-primary btn-block" type="submit">Do Change</button>
			<button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>
		</form>
		<!-- FOOTER -->
		493601 01 117342 wjdehdus
		<%@include file="../footer.jsp"%>
	</div>
	<!-- /container -->

</body>
</html>