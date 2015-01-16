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

		<form class="form-signin">
			<h2 class="form-signin-heading">My Infomation</h2>
			
			<label for="email" class="sr-only">Email address</label> 
			<input type="email" id="email" class="form-control" placeholder="Email address" required autofocus readonly>
			
			<label for="name" class="sr-only">Name</label> 
			<input type="text" id="name" class="form-control" placeholder="Name" required readonly>
			
			<label for="phone" class="sr-only">Phone Number</label> 
			<input type="text" id="phone" class="form-control" placeholder="Phone Number" required readonly>
			
			<label for="local" class="sr-only">Local</label> 
			<input type="text" id="local" class="form-control" placeholder="Local" required readonly>
			
			<button class="btn btn-lg btn-primary btn-block" type="button" onclick="location.href='change.jsp'">Change</button>
		</form>
		<!-- FOOTER -->
		<%@include file="../footer.jsp"%>
	</div>
	<!-- /container -->

</body>
</html>