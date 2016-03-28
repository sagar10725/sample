
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html ng-app="angularApp">
<head>
<title>Angular-JS Sample</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrapCss/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrapCss/bootstrap.min.css" />


<script src="${pageContext.request.contextPath}/resources/js/angular-route.js"></script>
<script	src="${pageContext.request.contextPath}/resources/js/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>


<script src="${pageContext.request.contextPath}/resources/js/myApp.js"></script>
<script	src="${pageContext.request.contextPath}/resources/js/services/userService.js"></script>
<script	src="${pageContext.request.contextPath}/resources/js/controller/serverTimeCtrl.js"></script>
</head>
<body>
	<h1>Well-Come!</h1>

	<hr />
	<header>
		<div class="container">
			<nav>
				<ul>
					<li><a href="#/dashboard">home</a></li>
					<li><a href="#">Dividend Details</a></li>
					<li><a href="#">Data Load</a></li>
					<li><a href="#">Distributin Calendar</a></li>
					<li><a href="#">Fund Master</a></li>
					<li><a href="#">Fund Schedule</a></li>
					<%-- <li ng-show="roleAdmin"><a href="#admin">Admin</a></li>
					<li class="pull-right"><span class="username">Welcome <strong>
								{{currentUser.firstName}}</strong> !
					</span> <a href="#profile">Profile</a> | <a
						href="<spring:url value="/doLogout"/>">Logout</a></li> --%>
				</ul>
			</nav>
		</div>
	</header>



	<div id="content">
		<div class="container">
			<div ng-view=""></div>
		</div>
	</div>
</body>
</html>
