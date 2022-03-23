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
<link href="${path}/resources/css/bootstrap.min.css" rel="stylesheet" />
<script src="${path}/resources/js/bootstrap.bundel.min.js"></script>
</head>
<body>

	<div class="container-fluid">
	
		<form method="post" action="/infra/code/codeInst">


			<div class="row g-2 pt-3">
				<div class="col">
					<select class="form-select" name="ifcgSeq">
						<c:forEach items="${listIfcgSeq}" var="item" varStatus="status">
							<option value="<c:out value="${item.ifcgSeq}"/>">
								<c:out value="${item.ifcgSeq}" /> | <c:out value="${item.ifcgName}" />
							</option>
						</c:forEach>
					</select>
				</div>
				<div class="col">
					<input class="form-control" type="text" name="ifcdOrder" placeholder="ifcdOrder">
				</div>
				<div class="col">
					<input class="form-control" type="text" name="ifcdName" placeholder="ifcdName">
				</div>
				<div class="col">
					<input class="form-control" type="text" name="ifcdDelNy" placeholder="ifcdDelNy">
				</div>
				<div class="col">
					<input class="btn btn-lg btn-secondary" type="submit" value="제출">
				</div>
			</div>
		</form>
	</div>
</body>
</html>