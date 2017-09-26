<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>list.jsp</title>
<c:if test="${false}">	<!-- 웹브라우저까지 안날아가고 코딩시에만 사용하도록 -->
<link rel="stylesheet" href="../../css/bootstrap.css">
<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
<h1 class="btn btn-primary">Board List</h1>
${pageVO}
${xxx}

</body>
</html>