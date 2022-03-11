<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<a href="/infra/code/codeForm" style="text-decoration: none;">등록하기</a>
<a href="/infra/code/codeGroupList" style="text-decoration: none;">그룹보기</a>

<hr>
<form method="get" action="/infra/code/codeList">
코드그룹 : 
<select name="shIfcgSeq">
	<option value="">::코드그룹::</option>
	
	<c:forEach items="${listIfcgSeq}" var="item" varStatus="status">
		<option value="<c:out value="${item.ifcgSeq}"/>">
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
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<c:out value="Group ${item.ifcgSeq}"/> | <c:out value="${item.ifcdOrder}"/> | <a href="/infra/code/codeView?ifcdSeq=${item.ifcdSeq}" style="text-decoration: none"><c:out value="${item.ifcdName}"/></a> | <c:out value="${item.ifcdDelNy}"/><br>
		
		
		</c:forEach>
	</c:otherwise>
</c:choose>