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
<link href="dist/css/bootstrap.min.css" rel="stylesheet">
<script src="assets/js/ie-emulation-modes-warning.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>
<script src="assets/js/docs.min.js"></script>
<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
<link href="css/carousel.css" rel="stylesheet">
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
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>당신의 강아지도 짝이 필요합니다.</h1>
						<p>
						<h1>
							<code>지금 바로 가입하세요.</code>
						</h1>
						<br>
						</p>
						<p>
							<a class="btn btn-lg btn-primary" href="<%=request.getContextPath()%>/signin/signin.jsp" role="button">Sign up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="data:image/gif;base64,R0lGODlhAQABAIAAAGZmZgAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>강아지를 올려보세요.</h1>
						<p>수많은 짝이 당신의 강아지를 기다리고 있습니다.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="request.getContextPath()%>/puppy/puppyEnroll.jsp" role="button">Up to my Puppy Info</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="data:image/gif;base64,R0lGODlhAQABAIAAAFVVVQAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>짝을 찾는 강아지를 확인하세요.</h1>
						<p>당신의 강아지에 천생연분을 만날 수 있을 것입니다.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="request.getContextPath()%>/puppy/puppyList.jsp" role="button">Go to Puppys List</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->


	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image"
					style="width: 140px; height: 140px;">
				<h2>Heading</h2>
				<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus,
					porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image"
					style="width: 140px; height: 140px;">
				<h2>Heading</h2>
				<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet
					fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image"
					style="width: 140px; height: 140px;">
				<h2>Heading</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					First featurette heading. <span class="text-muted">It'll blow your mind.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus
					magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
			</div>
		</div>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-5">
				<img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
			</div>
			<div class="col-md-7">
				<h2 class="featurette-heading">
					Oh yeah, it's that good. <span class="text-muted">See for yourself.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus
					magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
		</div>
		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					And lastly, this one. <span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus
					magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
			</div>
		</div>
		<hr class="featurette-divider">
		<%@include file="footer.jsp"%>
	</div>
	<!-- /.container -->
</body>
</html>
