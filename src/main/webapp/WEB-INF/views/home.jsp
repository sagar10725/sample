
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Angular-JS Sample</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />
<!-- <link rel="stylesheet" type="text/css"	href="resources/css/bootstrapCss/bootstrap.css" /> -->
<link rel="stylesheet" type="text/css" href="resources/css/bootstrapCss/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css"	href="resources/css/bootstrapCss/bootstrap-theme.min.css" /> 


<script src="https://code.jquery.com/jquery-2.2.2.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/angular.min.js"></script>
<script src="resources/js/angular-route.js"></script>



<script src="resources/js/myApp.js"></script>
<script src="resources/js/services/userService.js"></script>
<script src="resources/js/controller/serverTimeCtrl.js"></script>
</head>
<body ng-app="myapp">
	<h1>Well-Come!</h1>
	<div ng-controller="myController">{{message}}.</div>
	<hr />

	<div class="container">
		<ul class="breadcrumb">
			<li><a href="#/">home</a></li>
			<li><a href="#/dividend">Dividend Details</a></li>
			<li><a href="#">Data Load</a></li>
			<li><a href="#">Distribution Calendar</a></li>
			<li><a href="#">Fund Master</a></li>
			<li><a href="#">Fund Schedule</a></li>

		</ul>
	</div>
	<hr />

	<div id="main">
		<div ng-view></div>
	</div>

</body>
</html>
