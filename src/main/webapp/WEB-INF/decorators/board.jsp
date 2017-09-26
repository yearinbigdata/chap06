<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>	<!-- custom tag -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title"/></title>	<!-- 특별한 기능은 없음. warning때문에 추가한 것 -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap.css">
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap-theme.css">
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.css">

<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.js"></script>
<script type="text/javascript" src="/webjars/bootstrap/3.3.7/js/bootstrap.js"></script>

<script type="text/javascript" src="/webjars/chartjs/2.6.0/Chart.bundle.js"></script>
<sitemesh:write property="head"/>

<c:if test="${false}">	<!-- 웹브라우저까지 안날아가고 코딩시에만 사용하도록 -->
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/animate.css">
</c:if>
</head>
<body>
<header>Header</header>

<section class="panel panel-default">		<!-- panel형태로 css를 만들어줌 -->
	<div class="panel-heading">Web Board</div>
	<div class="panel-body">
		<sitemesh:write property="body"/>		<!-- 데코대상의 body가 들어감 -->
	</div>
</section>

<footer>Footer</footer>


</body>
</html>