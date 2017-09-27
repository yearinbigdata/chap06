<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>list.jsp</title>

<!-- 		CSS는 decorator에서 입히도록!!! -->

<c:if test="${false}">
	<!-- 웹브라우저까지 안날아가고 코딩시에만 사용하도록 -->
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
<!-- 	panel head -->
	<div class="panel panel-heading">
		<h1 class="fadeInRight">Bootstrap list page</h1>
	</div>
	<div class="panel-body pull-right">
		<h3><a href="/bootstrap/register">Register</a></h3>
	</div>
	
<!-- 	list by table of panel -->
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
			<input id="keywordSearch" type="text">
			<button id="btnSearch">Search</button>
		</div>
<!-- 	pagination by nav : forEach와 pageMaker & jstl이용해서 실제 db에 접근-->
		<nav>
			<ul class="pagination">
				<li class=""		><a href="10"> Prev 10</a></li>
				<li class=""		><a href="11"> 11</a></li>
				<li class=""		><a href="12"> 12</a></li>
				<li class=""		><a href="13"> 13</a></li>
				<li class=""		><a href="14"> 14</a></li>
				<li class="active"><a href="15"> 15</a></li>
				<li class=""		><a href="16"> 16</a></li>
				<li class=""		><a href="17"> 17</a></li>
				<li class=""		><a href="18"> 18</a></li>
				<li class=""		><a href="19" > 19</a></li>
				<li class=""		><a href="20" > 20</a></li>
				<li class=""		><a href="21">Next 21</a></li>
			</ul>
		</nav>
	</div>
	
<!-- pagination 정보 넘기는 녀석, 서버에 전송하는 코드 -->
	<form id="f1" action="/bootstrap/list" method="get">
		<input type="hidden" name="page" value="${pageVO.page}">
		<input type="hidden" name="size" value="${pageVO.size}">
		<input type="hidden" name="type" value="${pageVO.type}">
		<input type="hidden" name="keyword" value="${pageVO.keyword}">
	</form>
	
<!-- 	클릭에 따른 이벤트 처리 -->
	<script type="text/javascript">
// 	class를 찾을 때는 '.', id로 찾을 때는 '#'
	var formObj = $("#f1");
	

// 	jquery 함수 : 페이지네이션이라는 클래스에서 a 태그를 찾아냄 && 클릭했을 때, 함수 e를 호출하면 href의 값을 읽어서 수행 
	$(".pagination a").click(function(e) {
		e.preventDefault();
		var page = $(this).attr("href");
		alert("page=" + page);

		// formObj에 해당하는 녀석의 자녀(child)를 찾음 --> 이름이 'page'인 녀석을 찾음
		formObj.find("[name='page']").val(page);
		
		// formObj에 해당하는 submit요청이 수행됨(get방식으로 "/bootstrap/list")
		formObj.submit();
	});	

// search 버튼을 눌렀을 때, 검색 타입을 찾아내고 키워드를 기반으로 폼에 제출(submit)해야 한다
	$("#btnSearch").click(function(e) {
		// 	typeSelect에서 	:selected 사용자가 선택한 놈
		var typeSelect = $('#typeSelect').find(":selected").val();
		var keywordSearch = $('#keywordSearch').val();
		
		alert("type = "+ typeSelect+", keywordSearch =" + keywordSearch)
		
		formObj.find("[name='type']").val(typeSelect);
		formObj.find("[name='keyword']").val(keywordSearch);
		
		formObj.submit();
		
	});
	</script>
</body>
</html>