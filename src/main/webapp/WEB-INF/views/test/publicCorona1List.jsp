<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<br>aaa : <c:out value="${items}"/>
<br>
<c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="${item.YYYY}"/><br>
	<c:out value="${item.MM}"/><br>
</c:forEach>

<hr>

<c:out value="${body}"/>