<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>




<c:out value="${rt.ifcgSeq}"/> | <c:out value="${rt.ifcgName}"/> | <c:out value="${rt.ifcgDelNy}"/>
<hr>
<a href="/infra/code/codeGroupEditForm?ifcgSeq=${rt.ifcgSeq}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>&thisPage=<c:out value="${vo.thisPage}"/>">수정하기</a>
<a href="/infra/code/codeGroupList?shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>&thisPage=<c:out value="${vo.thisPage}"/>">목록으로</a>