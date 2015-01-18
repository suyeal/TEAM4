<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<link href="../dist/css/the-big-picture.css" rel="stylesheet">
</head>


<body>
<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
        <div class="container">

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="<%=request.getContextPath()%>/index.jsp">메인으로 돌아가기</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-12">
				<h4>로그인이 필요한 메뉴입니다.<h4>
				<h1>로그인하시거나 가입해주세요.</h1><br>
				
				<button class="btn btn-lg btn-primary btn-block" onclick="location.href='<%=request.getContextPath()%>/login/login.jsp'">Go Login</button>
				<button class="btn btn-lg btn-primary btn-block" onclick="location.href='<%=request.getContextPath()%>/signin/signin.jsp'">Sign In</button>
		<!-- FOOTER -->
			</div>
		</div>
		<!-- /.row -->
	</div>

</body>
</html>