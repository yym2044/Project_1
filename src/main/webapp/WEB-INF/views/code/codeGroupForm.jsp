<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="/infra/code/codeGroupInst">

	<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="hidden" name="shIfcgDelNy" value="<c:out value="${vo.shIfcgDelNy}"/>">
	<input type="hidden" name="shIfcgName" value="<c:out value="${vo.shIfcgName}"/>">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	
	<input type="text" name="ifcgName" id="ifcgName" placeholder="코드그룹 이름을 입력하세요">
	<!-- 
	<input type="text" name="ifcdName" id="ifcdName" placeholder="코드 이름을 입력하세요">
	 -->
	<input type="submit" id="btnSubmit" value="제출">
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">

	$("#btnSubmit").on("click", function(){
	
		if(!checkNull($("#ifcgName"), $("#ifcgName").val(), "빈칸입니다.")) return false;
		
		
	});
	

</script>