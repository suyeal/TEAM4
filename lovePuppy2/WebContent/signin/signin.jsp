<%@page import="model.domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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
	<%@include file="../header.jsp"%>
	<div class="container">
		<form class="form-signin" method="post" action="<%=request.getContextPath()%>/member.do">
    		<input type="hidden" value="signup" name="command">
				<h2 class="form-signin-heading">Please sign in</h2>
				
				<label for="email" class="sr-only">Email address</label>
				<input type="email" name="email" class="form-control" placeholder="Email address" required autofocus>
	
				<button  class="btn btn-lg btn-primary btn-block" type="button" onclick="location.href='idcheck.jsp'" style="margin-bottom : 10px">�ߺ� üũ</button>
				
				<label for="password" class="sr-only">Password</label>
				<input type="password" name="password" class="form-control" placeholder="Password" required>
				
				<label for="password2" class="sr-only">Password  Confirm</label>
				<input type="password" name="password2" class="form-control" placeholder="Password  Confirm" required>
				
				<label for="name" class="sr-only">Name</label> 
				<input type="text" name="name" class="form-control" placeholder="Name" required>
				
				<label for="phone" class="sr-only">Phone Number</label> 
				<input type="text" name="phone" class="form-control" placeholder="Phone Number" required>
				
				<label for="local" class="sr-only">Local</label> 
				<input type="text" name="local" class="form-control" placeholder="Local" required>
				
				<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
				<button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>
		</form>
		<!-- FOOTER -->
		<%@include file="../footer.jsp"%>
	</div>
	<!-- /container -->

</body>
</html>