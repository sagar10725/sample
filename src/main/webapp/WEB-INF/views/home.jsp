<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Example: Intelligent Navigation Bars with JavaScript and
	CSS</title>


<script src="resources/js/angular.min.js"></script>
<script src="resources/js/angular-route.js"></script>

<!-- <link rel="stylesheet" type="text/css" href="resources/css/home.css" /> -->
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

<script language="javascript" type="text/javascript">
	var getRootContext = function() {
		return "${pageContext.request.contextPath}";
	}
</script>
</head>
<body ng-app="myapp">
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<h1>
						<a href="index.html">textured<span class="logo_colour">_stars_light</span></a>
					</h1>
					<h2>Simple. Contemporary. Website Template.</h2>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">
					<!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
					<li id="home"><a href="#/">Home</a></li>
					<li id ="dividend"><a href="#/dividend">Dividend Detail</a></li>
					<li><a href="#/">A Page</a></li>
					<li><a href="#">Another Page</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
			</div>
		</div>
		<div id="site_content">
			<div ng-view=""></div>
		</div>

		<script src="resources/js/myjs.js"></script>
		<script type="text/javascript" src="resources/js/demoJavaScript.js"></script>
		<script src="resources/js/myApp.js"></script>
		<script src="resources/js/services/userService.js"></script>
		<script src="resources/js/controller/serverTimeCtrl.js"></script>

		<div id="footer">
			Copyright &copy; textured_stars_light | <a
				href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a
				href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a
				href="http://www.html5webtemplates.co.uk">design from
				HTML5webtemplates.co.uk</a>
		</div>

	</div>


</body>
</html>

