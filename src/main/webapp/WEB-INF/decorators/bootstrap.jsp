<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title><sitemesh:write property="title" /></title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap.css">
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/css/bootstrap-theme.css">
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.css">

<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.js"></script>
<script type="text/javascript"
	src="/webjars/bootstrap/3.3.7/js/bootstrap.js"></script>

<script type="text/javascript"
	src="/webjars/chartjs/2.6.0/Chart.bundle.js"></script>
<sitemesh:write property="head" />
<c:if test="${false}">
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/animate.css">
</c:if>
</head>
<body class="container">
	<header class="page-header">
<!-- 		상단 고정 메뉴 -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">WebSiteName</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="/boards/list">Thymeleaf list</a></li>
					<li><a href="/board/list">JSP list</a></li>
					<li><a href="/boards/view">Thymeleaf view</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<section class="panel panel-default">
		<sitemesh:write property="body" />
	</section>

	<footer>footer</footer>

</body>
</html>