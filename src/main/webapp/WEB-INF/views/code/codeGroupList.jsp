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

<select name="shIfcgDelNy">
	<option value="">::삭제여부::</option>
	<option value="1">Y</option>
	<option value="0">N</option>
</select>

그룹이름 : <input type="text" name="shIfcgName" value="${param.shIfcgName}">
||
<select name="shOption">
	<option value="">::검색구분::</option>
	<option value="1" <c:if test="${param.shOption eq 1}">selected</c:if>>한글</option>
	<option value="2" <c:if test="${param.shOption eq 2}">selected</c:if>>영어</option>
</select>
<input type="text" name="shValue">
<input type="submit" value="검색">
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
				<td>*</td>
				<td>코드그룹 번호</td>
				<td>이름</td>
				<td>영문이름</td>
				<td>삭제여부</td>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="item" varStatus="status">
				<tr>
					<td><a href="/infra/code/codeGroupView2?ifcgSeq=<c:out value="${item.ifcgSeq}"/>">그룹 코드 조회</a></td>
					<td><c:out value="${item.ifcgSeq}"/></td>
					<td><a href="/infra/code/codeGroupView1?ifcgSeq=<c:out value="${item.ifcgSeq}"/>"><c:out value="${item.ifcgName}"/></a></td>
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
    <li class="page-item disabled">
      <a class="page-link">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item active" aria-current="page">
      <a class="page-link" href="#">2</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

