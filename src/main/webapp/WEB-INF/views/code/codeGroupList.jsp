<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
		
		<a href="/infra/code/codeGroupView2?ifcgSeq=${item.ifcgSeq}">그룹 코드 조회</a> | <c:out value="그룹 ${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView1?ifcgSeq=${item.ifcgSeq}"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgDelNy}"/><br>
		<a href="/infra/code/codeGroupView2?ifcgSeq=<c:out value="${item.ifcgSeq}"/>">그룹 코드 조회</a> | <c:out value="그룹 ${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView1?ifcgSeq=<c:out value="${item.ifcgSeq}"/>"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgNameEng}"/> | <c:out value="${item.ifcgDelNy}"/><br>
		
		?ifcgSeq=${item.ifcgSeq}	vs		?ifcgSeq=<c:out value="${item.ifcgSeq}"/>
		
		</c:forEach>
	</c:otherwise>
</c:choose> --%>



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
	
		<table style="min-width: 700px; border-collapse: collapse;">
			<tr>
				<td>*</td>
				<td>코드그룹 번호</td>
				<td>이름</td>
				<td>영문이름</td>
				<td>삭제여부</td>
			</tr>
			<c:forEach items="${list}" var="item" varStatus="status">
				<tr>
					<td><a href="/infra/code/codeGroupView2?ifcgSeq=<c:out value="${item.ifcgSeq}"/>">그룹 코드 조회</a></td>
					<td><c:out value="${item.ifcgSeq}"/></td>
					<td><a href="/infra/code/codeGroupView1?ifcgSeq=<c:out value="${item.ifcgSeq}"/>"><c:out value="${item.ifcgName}"/></a></td>
					<td><c:out value="${item.ifcgNameEng}"/></td>
					<td><c:out value="${item.ifcgDelNy}"/></td>
				<tr>
			</c:forEach>
		</table>

	</c:otherwise>
</c:choose>



