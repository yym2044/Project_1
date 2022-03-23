<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- 추가 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<link href="${path}/resources/css/style.css" rel="stylesheet"/>
<link href="${path}/resources/css/sidebars.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
</head>
<body>
	
	<form>
	
	
		<c:out value="Group ${rt.ifcgSeq}"/> | <c:out value="${rt.ifcdOrder}"/> | <c:out value="${rt.ifcdName}"/> | <c:out value="${rt.ifcdDelNy}"/>
		<hr>
		<a href="/infra/code/codeEditForm?ifcdSeq=${rt.ifcdSeq}&shIfcgSeq=<c:out value="${vo.shIfcgSeq}"/>" style="text-decoration: none; color: green">수정하기</a>
		<a href="/infra/code/codeList?shIfcgSeq=<c:out value="${vo.shIfcgSeq}"/>" style="text-decoration: none">목록</a>
		<%-- <a href="/infra/code/codeDele?ifcdSeq=${rt.ifcdSeq}" style="text-decoration: none; color: red">삭제</a> --%>
		
		<a class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">삭제</a>
		
		
		
		
		
		
		
		
		
		
		
		
		<!-- deleteModal -->
		
		<div class="modal fade" id="deleteModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">삭제</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>
					<div class="modal-body">선택항목을 삭제합니다.</div>
					<div class="modal-footer">
						<a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteConfirmModal">확인</a>
						<button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- deleteConfirmModal -->
		<div class="modal fade" id="deleteConfirmModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">확인</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>
					<div class="modal-body">정말 삭제합니다.</div>
					<div class="modal-footer">
						<a class="btn btn-primary" href="/infra/code/codeNele?ifcdSeq=${rt.ifcdSeq}&shIfcgSeq=${vo.shIfcgSeq}" role="button">확인</a>
						<button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	
	</form>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script src="${path}/resources/js/sidebars.js"></script>
</body>

</html>