<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style type="text/css">
	td{
		text-align: center;
	}
	
	a{
		text-decoration: none;
	}

</style>

<a href="/infra/code/codeForm" style="text-decoration: none;">등록하기</a>
<a href="/infra/code/codeGroupList" style="text-decoration: none;">그룹보기</a>

<hr>
<form method="get" action="/infra/code/codeList">
코드그룹 : 
<select name="shIfcgSeq">
	<option value="">::코드그룹::</option>
	
	<c:forEach items="${listIfcgSeq}" var="item" varStatus="status">
		<option value="<c:out value="${item.ifcgSeq}"/>" <c:if test="${vo.shIfcgSeq eq item.ifcgSeq}"> selected</c:if>>
			<c:out value="${item.ifcgSeq}" /> | <c:out value="${item.ifcgName}" />
		</option>
	</c:forEach>
	
</select>
<input type="submit" value="검색">
</form>
<hr>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<table class="table table-hover table-sm border border-1 box-white">
			<thead>
				<tr>
					<td>ifcgSeq</td>
					<td>ifcdSeq</td>
					<td>ifcdOrder</td>
					<td>ifcdName</td>
					<td>ifcdDelNy</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="item" varStatus="status">	
					<tr>
						<td><c:out value="${item.ifcgSeq}"/></td>
						<td><c:out value="${item.ifcdSeq}"/></td>
						<td><c:out value="${item.ifcdOrder}"/></td>
						<td><a href="/infra/code/codeView?ifcdSeq=${item.ifcdSeq}&shIfcgSeq=<c:out value="${vo.shIfcgSeq}"/>" style="text-decoration: none"><c:out value="${item.ifcdName}"/></a></td>
						<td><c:out value="${item.ifcdDelNy}"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:otherwise>
</c:choose>

<nav class="mt-3" aria-label="...">
  <ul class="pagination">
    <c:if test="${vo.startPage gt vo.pageNumToShow}">
    	<li class="page-item"><a class="page-link" href="/infra/code/codeList?thisPage=${vo.startPage - 1}">Previous</a></li>
	</c:if>
	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
		<c:choose>
			<c:when test="${i.index eq vo.thisPage}">
	                <li class="page-item active"><a class="page-link" href="/infra/code/codeList?thisPage=${i.index}">${i.index}</a></li>
			</c:when>
			<c:otherwise>             
	                <li class="page-item"><a class="page-link" href="/infra/code/codeList?thisPage=${i.index}">${i.index}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>     
	<c:if test="${vo.endPage ne vo.totalPages}">                
		<li class="page-item"><a class="page-link" href="/infra/code/codeList?thisPage=${vo.endPage + 1}">Next</a></li>
	</c:if>  
  </ul>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>