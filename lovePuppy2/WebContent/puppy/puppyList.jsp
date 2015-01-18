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
<link href="../dist/css/1-col-portfolio.css" rel="stylesheet">
<script src="../dist/js/jquery.js"></script>

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

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Page Heading <small>Secondary Text</small>
				</h1>
			</div>
		</div>
		<!-- /.row -->

		<!-- Project One -->
		<div class="row">
			<div class="col-md-7">
				<a href="#"> <img class="img-responsive" src="http://placehold.it/700x300" alt="">
				</a>
			</div>
			<div class="col-md-5">
				<h3>매칭 신청 강아지 리스트</h3>
				<h4>Subheading</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore,
					voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="<%=request.getContextPath()%>/puppy/puppyDetail.jsp">View Project <span
					class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
		<!-- /.row -->

		<hr>
		<!-- FOOTER -->
		<%@include file="../footer.jsp"%>
	</div>
	<!-- /container -->

</body>
</html>