<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<table>
	<tr>
		<td>ifmmSeq</td>
		<td>ifmmName</td>
		<td>ifmmId</td>
		<td>ifmmDob</td>
		<td>regDateTime</td>
		<td>modDateTime</td>
	</tr>
	<c:forEach items="${list}" var="item" varStatus="status">
		<tr>
			<td><c:out value="${item.ifmmSeq}"/></td>
			<td><c:out value="${item.ifmmName}"/></td>
			<td><c:out value="${item.ifmmId}"/></td>
			<td><c:out value="${item.ifmmDob}"/></td>
			<td><fmt:formatDate value="${item.regDateTime}" pattern="yyyy-mm-dd"/></td>
			<td><fmt:formatDate value="${item.modDateTime}" pattern="yyyy-mm-dd"/></td>
		</tr>
	</c:forEach>
</table>