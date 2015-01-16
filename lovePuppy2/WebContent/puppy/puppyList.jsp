<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
</head>
<!-- NAVBAR
================================================== -->
<body>
	<%@include file="../header.jsp"%>

	<div class="container">

		<form class="form-signin">
			<h2 class="form-signin-heading">Please sign in</h2>
			<label for="inputEmail" class="sr-only">Email address</label> 
			<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
			
			<label for="inputPassword" class="sr-only">Password</label>
			<input type="password" id="inputPassword"class="form-control" placeholder="Password" required>
			
			<label for="inputName" class="sr-only">Name</label> 
			<input type="text" id="inputName" class="form-control" placeholder="text" required>
			
			<label for="inputPhone" class="sr-only">Phone Number</label> 
			<input type="text" id="inputPhone" class="form-control" placeholder="text" required>
			
			<label for="inputlocal" class="sr-only">Local</label> 
			<input type="text" id="inputLocal" class="form-control" placeholder="text" required
>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
		</form>
		<!-- FOOTER -->
		<%@include file="../footer.jsp"%>
	</div>
	<!-- /container -->

</body>
</html>