<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="/infra/code/codeUpdt">
	<input type="hidden" name="ifcdSeq" value = "<c:out value="${rt.ifcdSeq}"/>">
	<input type="hidden" name="shIfcgSeq" value = "<c:out value="${vo.shIfcgSeq}"/>">
	<input type="text" name="ifcdOrder" placeholder="ifcdOrder를 입력" value = "<c:out value="${rt.ifcdOrder}"/>">
	<input type="text" name="ifcdName" placeholder="ifcdName을 입력" value = "<c:out value="${rt.ifcdName}"/>">
	<input type="submit" value="수정">
	<a style="text-decoration: none;" href="/infra/code/codeView?ifcdSeq=<c:out value="${rt.ifcdSeq}"/>&shIfcgSeq=<c:out value="${vo.shIfcgSeq}"/>">취소</a>
</form>