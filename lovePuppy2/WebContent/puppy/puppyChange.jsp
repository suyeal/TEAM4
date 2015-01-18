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

		<form action="<%=request.getContextPath()%>/puppy.do" class="form-signin" method="post">
			<h2 class="form-signin-heading">Please Change</h2>
			
			<label for="pName" class="sr-only">Puppy's Name</label> 
			<!-- name추가 --><input type="text" name="pName" id="pName" class="form-control" placeholder="Puppy's Name" required autofocus>

			<label for="pKind" class="sr-only">Kind</label>
			<!-- name추가 --><input type="text" name="pKind" id="pKind"class="form-control" placeholder="Kind" required>
			
			<label for="pGender" class="sr-only">Gender</label>
			<!-- name추가 --><input type="text" name="pGender" id="pGender"class="form-control" placeholder="Gender" required>
			
			<label for="pAge" class="sr-only">Age</label> 
			<!-- name추가 --><input type="text" name="pAge" id="pAge" class="form-control" placeholder="Age" required>
			
			<label for="pSize" class="sr-only">Size(cm)</label> 
			<!-- name추가 --><input type="text" name="pSize" id="pSize" class="form-control" placeholder="Size(cm)" required>
			
			<input type="hidden" value="updatePuppy"  name="command" >
			<input type="hidden" value="${member.memberNum}"  name="memberNum">
			<button class="btn btn-lg btn-primary btn-block" type="submit">Do Change</button>
			<button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>
		</form>
		<!-- FOOTER -->
		<%@include file="../footer.jsp"%>
	</div>
	<!-- /container -->

</body>
</html>