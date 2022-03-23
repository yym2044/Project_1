<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="/infra/code/codeGroupUpdt">

	<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="hidden" name="shIfcgDelNy" value="<c:out value="${vo.shIfcgDelNy}"/>">
	<input type="hidden" name="shIfcgName" value="<c:out value="${vo.shIfcgName}"/>">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>">

	<input type="text" name="ifcgSeq" placeholder="ifcgSeq를 입력" value = "${rt.ifcgSeq}">
	<input type="text" name="ifcgName" placeholder="ifcgName를 입력" value = "<c:out value="${rt.ifcgName}"/>">
	<input type="text" name="ifcgDelNy" placeholder="ifcgDelNy를 입력" value = "${rt.ifcgDelNy}">
	<input type="submit" value="수정">
</form>