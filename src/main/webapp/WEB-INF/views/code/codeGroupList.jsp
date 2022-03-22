<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style type="text/css">
	td{
		text-align:center;
	}
	
	a{
		text-decoration: none;
	}

</style>

<form method="get" action="/infra/code/codeGroupList">

<select name="shIfcgDelNy" id="shIfcgDelNy">
	<option value="">::삭제여부::</option>
	<option value="1" <c:if test="${vo.shIfcgDelNy eq 1}">selected</c:if>>Y</option>
	<option value="0" <c:if test="${vo.shIfcgDelNy eq 0}">selected</c:if>>N</option>
</select>

그룹이름 : <input type="text" name="shIfcgName" id="shIfcgName" value="${vo.shIfcgName}">
||
<select name="shOption">
	<option value="">::검색구분::</option>
	<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>한글</option>
	<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>영어</option>
</select>
<input type="text" name="shValue" value="${vo.shValue}">
<input type="submit" id="btnSubmit" value="검색">
<input type="submit" id="btnSubmit2" value="검색">
<a type="button" class="btn btn-outline-primary" href="/infra/code/codeGroupForm?shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>&thisPage=<c:out value="${vo.thisPage}"/>">등록</a>
<br>
</form>
<%-- <c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<a href="/infra/code/codeGroupView2?ifcgSeq=<c:out value="${item.ifcgSeq}"/>">그룹 코드 조회</a> | <c:out value="그룹 ${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView1?ifcgSeq=<c:out value="${item.ifcgSeq}"/>"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgNameEng}"/> | <c:out value="${item.ifcgDelNy}"/><br>
		
		
		</c:forEach>
	</c:otherwise>
</c:choose>
 --%>
		<%-- <a href="/infra/code/codeGroupView2?ifcgSeq=${item.ifcgSeq}">그룹 코드 조회</a> | <c:out value="그룹 ${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView1?ifcgSeq=${item.ifcgSeq}"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgDelNy}"/><br> --%>
		<%-- ?ifcgSeq=${item.ifcgSeq}	vs		?ifcgSeq=<c:out value="${item.ifcgSeq}"/> --%>


<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<table class="table table-hover table-sm border border-1 box-white"
			style="min-width: 1000px; border-collapse: collapse;">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</table>
	</c:when>

	<c:otherwise>
	
		<table class="table table-hover table-sm border border-1 box-white" style="min-width: 700px; border-collapse: collapse;">
			<thead>
				<tr>
					<td>ifcgSeq</td>
					<td>ifcgName</td>
					<td>ifcgNameEng</td>
					<td>ifcgDelNy</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="item" varStatus="status">
					<tr>
						<td><a href="/infra/code/codeGroupView2?ifcgSeq=<c:out value="${item.ifcgSeq}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>&thisPage=<c:out value="${vo.thisPage}"/>"><c:out value="${item.ifcgSeq}"/></a></td>
						<td><a href="/infra/code/codeGroupView1?ifcgSeq=<c:out value="${item.ifcgSeq}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>&thisPage=<c:out value="${vo.thisPage}"/>"><c:out value="${item.ifcgName}"/></a></td>
						<td><c:out value="${item.ifcgNameEng}"/></td>
						<td><c:out value="${item.ifcgDelNy}"/></td>
					<tr>
				</c:forEach>
			</tbody>
		</table>

	</c:otherwise>
</c:choose>

<nav class="mt-3" aria-label="...">
  <ul class="pagination">
    <c:if test="${vo.startPage gt vo.pageNumToShow}">
    	<li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${vo.startPage - 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>">Previous</a></li>
	</c:if>
	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
		<c:choose>
			<c:when test="${i.index eq vo.thisPage}">
	                <li class="page-item active"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>">${i.index}</a></li>
			</c:when>
			<c:otherwise>             
	                <li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${i.index}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>">${i.index}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>     
	<c:if test="${vo.endPage ne vo.totalPages}">                
		<li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${vo.endPage + 1}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>">Next</a></li>
	</c:if>  
  </ul>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">
	$("#btnSubmit").on("click", function(){
		
//		alert("jquery방식 : " + $("#shIfcgDelNy").val());								// jquery 방식
//		alert("javascript방식 : " + document.getElementById("shIfcgName").value);		// javascript 방식
	
//	if($("shIfcgName").val() == "" || $("shIfcgName").val() == null){
//		alert("shIfcgName이 비어있다");
//		$("shIfcgName").focus();
//	}

//	checkNull($("#shIfcgDelNy"), $("#shIfcgDelNy").val(), "삭제여부 선택하시오");
//	checkNull($("#shIfcgName"), $("#shIfcgName").val(), "그룹이름을 입력하시오");
//	checkNull($("#shOption"), $("#shOption").val(), "한글 또는 영어를 선택하시오");
//	checkNull($("#shValue"), $("#shValue").val(), "이름을 입력하시오");

	if(!checkNull($("#shIfcgDelNy"), $("#shIfcgDelNy").val(), "삭제여부 선택하시오")) return false;
	if(!checkNull($("#shIfcgName"), $("#shIfcgName").val(), "그룹이름을 입력하시오")) return false;
		
	});
	
	$("#btnSubmit2").on("click", function(){
		alert("2번째 버튼입니다.");
	});

</script>
