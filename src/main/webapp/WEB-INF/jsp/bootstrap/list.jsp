<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>list.jsp</title>
<c:if test="${false}">
	<!-- 웹브라우저까지 안날아가고 코딩시에만 사용하도록 -->
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
	<div class="pannel-heading">
		<h1 class="animated fadeInRight">Bootstrap List Page</h1>
	</div>
	<div class="panel-body pull-right">
		<h3><a href="/bootstrap/register">Register</a></h3>
	</div>
	<div class="panel-body">
		<table class="table table-striped">
			<tr>
				<th>bno</th>
				<th>title</th>
				<th>writer</th>
			</tr>
			<c:forEach var="bno" begin="100" end="110">
				<tr>
					<td>${bno}</td>
					<td><a href="${bno}">xxx ${bno}</a></td>
					<td>user${bno}</td>
				</tr>
			</c:forEach>
		</table>

<!-- 	search -->
		<div>	
			<select id="typeSelect">
				<option value="all"> - </option>
				<option value="t">Title</option>
				<option value="c">Content</option>
				<option value="w">Writer</option>
			</select>

			<input id="xxx" type="text">
			<button id="btnSerch">Serch</button>
		</div>
	</div>
	<nav>
		<ul class="pagination">
			<li><a href="10">Prev 10</a></li>
			<li class=""><a href="11" >11</a></li>
			<li class=""><a href="12">12</a></li>
			<li class=""><a href="13">13</a></li>
			<li class=""><a href="14">14</a></li>
			<li class="active"><a href="15">15</a></li>
			<li class=""><a href="16">16</a></li>
			<li class=""><a href="17">17</a></li>
			<li class=""><a href="18">18</a></li>
			<li class=""><a href="19">19</a></li>
			<li class=""><a href="20">20</a></li>
			<li class=""><a href="21">Next 21</a></li>
			
		</ul>
	</nav>
	
	<form id="f1" action="/bootstrap/list" method="get">
		<input type="hidden" name="page" value="${pageVO.page}">
		<input type="hidden" name="size" value="${pageVO.size}">
		<input type="hidden" name="type" value="${pageVO.type}">
		<input type="hidden" name="keyword" value="${pageVO.keyword}">
	</form>
	
	<script type="text/javascript">	
	var formObj = $("#f1");//id앞에는 #
						//클릭이벤트 발생하면 함수 호출		
	$(".pagination a").click(function(e) { //class앞에는 .
		e.preventDefault();
		var page = $(this).attr("href");
		alert("page=" + page);
		
		formObj.find("[name='page']").val(page);
		
		formObj.submit();
	});
	
	$("#btnSerch").click(function(e){
		var type = $('#typeSelect').find(":selected").val();
		var keyword = $('#xxx').val();
		
		alert("type=" + type + ", keyword =" + keyword);
		
		formObj.find("[name='type']").val(type);
		formObj.find("[name='keyword']").val(keyword);
		
		formObj.submit();
		
	});
	
	</script>


</body>
</html>
