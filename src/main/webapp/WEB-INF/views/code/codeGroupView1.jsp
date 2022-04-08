<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form id="formView" action="" method="post">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" id="ifcgSeq" name="ifcgSeq" value="<c:out value="${vo.ifcgSeq}"/>">
	<input type="hidden" id="shIfcgDelNy" name="shIfcgDelNy" value="<c:out value="${vo.shIfcgDelNy}"/>">
	<input type="hidden" id="shIfcgName" name="shIfcgName" value="<c:out value="${vo.shIfcgName}"/>">
	<input type="hidden" id="shOption" name="shOption" value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>">
</form>

<c:out value="${rt.ifcgSeq}"/> | <c:out value="${rt.ifcgName}"/> | <c:out value="${rt.ifcgDelNy}"/>
<hr>
<%-- <a href="/infra/code/codeGroupEditForm?ifcgSeq=${rt.ifcgSeq}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>&thisPage=<c:out value="${vo.thisPage}"/>">수정하기</a> --%>
<a href="javascript:goEdit();">수정하기</a>
<%-- <a href="/infra/code/codeGroupList?shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>&thisPage=<c:out value="${vo.thisPage}"/>">목록으로</a> --%>
<a href="javascript:goList();">목록으로</a>
<a id="btnDelete" href="/infra/code/codeGroupDele?ifcgSeq=${rt.ifcgSeq}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>&thisPage=<c:out value="${vo.thisPage}"/>">삭제(진짜)</a>
<a id="btnUpdateDelete" href="/infra/code/codeGroupNele?ifcgSeq=${rt.ifcgSeq}&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>&shIfcgDelNy=<c:out value="${vo.shIfcgDelNy}"/>&shIfcgName=<c:out value="${vo.shIfcgName}"/>&thisPage=<c:out value="${vo.thisPage}"/>">삭제(가짜)</a>

<%-- <img src="/infra/resources/uploaded/${rt.originalFileName}"> --%>
<br><img src="/infra/resources/uploaded/${rt.uuidFileName}">
<br><a href="/infra/resources/uploaded/${rt.uuidFileName}" download="${rt.originalFileName}">다운로드</a><br>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">


	goList = function(){
		$("#formView").attr("action", "/infra/code/codeGroupList");
		$("#formView").submit();
	};
	
	goEdit = function(){
		$("#formView").attr("action", "/infra/code/codeGroupEditForm");
		$("#formView").submit();
	};
	
	$("#btnDelete").on("click", function(){
		
		var delConfirm = confirm('당신의 파일이 삭제됩니다.');
		
		if(delConfirm){
			var delConfirm2 = confirm("정말로 삭제합니다?");
			
			if(delConfirm2){
				alert("삭제가 완료되었습니다.")
			} else {
				return false;
			}
			
		} else {
			return false;
		}
		
	});
	
$("#btnUpdateDelete").on("click", function(){
		
		var delConfirm = confirm('당신의 파일이 삭제됩니다.');
		
		if(delConfirm){
			var delConfirm2 = confirm("정말로 삭제합니다?");
			
			if(delConfirm2){
				alert("삭제가 완료되었습니다.")
			} else {
				return false;
			}
			
		} else {
			return false;
		}
		
	});

</script>

