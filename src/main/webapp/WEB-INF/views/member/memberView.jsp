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

		<div class="container-fluid">
			<div class="row bg-dark mb-2" style="height: 42px;">
				<div class="col col-md-12 text-white d-flex align-items-center"><c:out value="${rt.ifmmId}"/>님의 회원정보입니다.</div>
			</div>

			<div class="row mb-2">
				<div class="col col-md-12 d-flex">
					<i class="bi bi-caret-right-square-fill text-primary"></i> <span class="ms-2 fw-bold">회원 기본 정보</span>
				</div>
			</div>

			<!-- table -->

			<table class="table" style="border-collapse: collapse;">
				<tr>
					<td style="width: 200px;" class="bg-light text-start">아이디</td>
					<td class="text-start"><c:out value="${rt.ifmmId}"/><span class="ms-2"><a href="#" class="fs-6"
							style="text-decoration: none;">비번변경</a></span></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">이름</td>
					<td class="text-start"><c:out value="${rt.ifmmName}"/></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">이메일</td>
					<td class="text-start"><c:out value="${rt.ifmeEmailFull}"/>
					
					<span class="badge <c:choose>
											<c:when test="${rt.ifmmEmailConsentNyText eq '수신동의'}">bg-primary</c:when>
											<c:when test="${rt.ifmmEmailConsentNyText eq '수신거부'}">bg-danger</c:when>
										</c:choose> ms-1">
					<c:out value="${rt.ifmmEmailConsentNyText}"/></span></td>
					
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">회원등급</td>
					<td class="text-start"><span class="fw-bold"><c:out value="${rt.ifmmGrade}"/></span><span class="ms-2"><a href="#" class="" style="text-decoration: none;">등급변경</a></span></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">주소</td>
					<td class="text-start"><c:out value="${rt.ifmaAddress1} ${rt.ifmaAddress2}"/></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">휴대폰</td>
					<td class="text-start"><c:out value="${rt.ifmpNumberMobile}"/>
					<span class="badge <c:choose>
											<c:when test="${rt.ifmmSmsConsentNyText eq '수신동의'}">bg-primary</c:when>
											<c:when test="${rt.ifmmSmsConsentNyText eq '수신거부'}">bg-danger</c:when>
										</c:choose> ms-1">
					<c:out value="${rt.ifmmSmsConsentNyText}"/></span>
				</td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">전화번호</td>
					<td class="text-start"><c:out value="${rt.ifmpNumberHome}"/></td>
				</tr>
			</table>

			<div class="text-center">
				<a href="/infra/member/memberList" type="button" class="btn btn-outline-dark btn-sm border border-3 container1">목록으로</a>
				<a href="/infra/member/memberEditForm?ifmmSeq=<c:out value="${rt.ifmmSeq}"/>" type="button" class="btn btn-outline-dark btn-sm border border-3 container1">정보수정</a>
			</div>

			<div class="row mb-2">
				<div class="col col-md-12 d-flex">
					<i class="bi bi-caret-right-square-fill text-primary"></i> <span class="ms-2 fw-bold">추가 정보</span>
				</div>
			</div>

			<!-- table -->

			<table class="table">
				
				<tr>
					<td style="width: 200px;" class="bg-light text-start">가입일</td>
					<td class="text-start"><c:out value="${rt.ifmmRegDate}"/></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">로그인</td>
					<td class="text-start">총 로그인 119회 (마지막 로그인 : 2022.02.17)</td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">생년월일</td>
					<td class="text-start"><c:out value="${rt.ifmmDob}"/></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">성별</td>
					<td class="text-start"><c:out value="${rt.ifmmGenderName}"/></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">마케팅 수신동의</td>
					<td class="text-start"><c:out value="${rt.ifmmPushConsentNyText}"/></td>
				</tr>
			</table>


		</div>
	</form>
	



	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	<script src="${path}/resources/js/sidebars.js"></script>

	<script type="text/javascript">
		var count = 1;

		function add_row() {
			var my_tbody = document.getElementById('my-tbody');
			// var row = my_tbody.insertRow(0); // 상단에 추가
			var row = my_tbody.insertRow(my_tbody.rows.length); // 하단에 추가
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			cell1.innerHTML = count;
			cell2.innerHTML = document.getElementById("inputMemo").value;
			cell3.innerHTML = new Date().toLocaleString();
			cell4.innerHTML = 'Master';

			count += 1;

			var input = document.getElementById('inputMemo');
			input.value = null;
		}

		function delete_row() {
			var my_tbody = document.getElementById('my-tbody');
			if (my_tbody.rows.length < 1)
				return;
			// my_tbody.deleteRow(0); // 상단부터 삭제
			my_tbody.deleteRow(my_tbody.rows.length - 1); // 하단부터 삭제
		}
	</script>

</body>

</html>