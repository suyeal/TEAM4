<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>header</title>
</head>
<body>
<div class="navbar-wrapper">
		<div class="container">
			<nav class="navbar navbar-inverse navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Love-Puppy</a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
							<li><a href="<%=request.getContextPath()%>/login/login.jsp">Login</a></li>
							<li><a href="<%=request.getContextPath()%>/contact/contact.jsp">Contact</a></li>
							<li class="dropdown"><a href="<%=request.getContextPath()%>/puppy/dropError.jsp" class="error" role="button" aria-expanded="false">MyPuppy<span
									class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="<%=request.getContextPath()%>/puppy/puppyList.jsp">�� �񷯺���</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">MyPuppy</li>
									<li><a href="<%=request.getContextPath()%>/puppy/puppyReceive.jsp">�� ������</a></li>
									<li><a href="<%=request.getContextPath()%>/puppy/puppyEnroll.jsp">MyPuppy ���</a></li>
									<li><a href="<%=request.getContextPath()%>/puppy/puppyChange.jsp">MyPuppy ����</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
</body>
</html>