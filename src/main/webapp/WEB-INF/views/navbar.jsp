<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <meta http-equiv="refresh" content="10"> -->
<title>Navbar</title>
<style>
* {
	margin: 0;
	padding: 0;
	text-decoration: none;
	list-style: none;
	box-sizing: border-box;
}

body {
	font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI',
		Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue',
		sans-serif;
}

div {
	background-color: blue;
	height: 50px;
}

nav {
	background: #0082e6;
	height: 60px;
	width: 100%;
}

label.logo {
	color: aliceblue;
	font-size: 35px;
	padding: 0 100px;
	line-height: 57px;
	font-weight: bold;
}

nav>ul {
	float: right;
	margin-right: 20px;
}

nav>ul>li {
	display: inline-block;
	line-height: 55px;
	margin: 0 5px;
}

nav ul li a {
	color: white;
	font-size: 20px;
	text-transform: uppercase;
	padding: 7px 13px;
	border-radius: 4px;
}

a.active, a:hover {
	background: #1b9bff;
	transition: .5s;
}
@media ( max-width :996px) {
	label.logo {
		font-size: 30px;
		padding-left: 50px;
	}
	nav>ul>li>a {
		font-size: 16px;
	}
}

@media ( max-width :844px) {
	label.logo {
		font-size: 20px;
		padding-left: 30px;
	}
	nav>ul>li>a {
		font-size: 15px;
	}
}

@media ( max-width :744px) {
	ul {
		position: fixed;
		width: 100%;
		height: 100vh;
		background: #0092e1;
		top: 57px;
		left: 0;
		text-align: center;
	}
	nav>ul>li {
		display: block;
	}
}
</style>
</head>

<body>
	<nav>
		<label class="logo">MyWebSpace</label>
		<ul>
			<li><a href="./homepage">Home</a></li>
			<li><a href="./aboutus">About</a></li>
			<li><a href="./service">Service</a></li>
			<li><a href="./support">Support</a></li>
			<li><a href="./loginpage">Logout</a></li>
		</ul>
	</nav>
</body>

</html>