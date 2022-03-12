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

	<form method="post" action="/infra/member/memberInst">
		
		<!-- ifmmSeq -->
		<input type="hidden" name="ifmmSeq" value="${fn:length(list2)+1}">
		<!-- ifmmRegDate -->
		<!-- <input type="hidden" name="ifmmRegDate" value="20220309"> -->
		
		<div class="container-fluid">
			<div class="row bg-dark mb-2" style="height: 42px;">
				<div class="col col-md-12 text-white d-flex align-items-center ps-4 fw-bold fs-4">회원등록</div>
			</div>

			<div class="row mb-2">
				<div class="col col-md-12 d-flex">
					<i class="bi bi-caret-right-square-fill text-primary"></i> <span class="ms-2 fw-bold">회원 기본 정보</span>
				</div>
			</div>

			<!-- table -->

			<table class="table" style="border-collapse: collapse;">
				<tr>
					<th style="width: 200px;" class="bg-light text-start">아이디</th>
					<td class="text-start" colspan="3"><input type="text" name="ifmmId" style="min-width: 200px;" placeholder="영문(대소문자),숫자,특수문자" autocomplete="off"><span class="ms-2"><a href="#" class="fs-6"
							style="text-decoration: none;">아이디 중복체크</a></span></td>
				</tr>
				<tr>
					<th style="width: 200px;" class="bg-light text-start">비밀번호</th>
					<td class="text-start"><input type="password" name="ifmmPwd" style="min-width: 200px;" autocomplete="off"></td>
					<th style="width: 200px;" class="bg-light text-start">비밀번호확인</th>
					<td class="text-start"><input type="password" name="ifmmPwdConfirm" style="min-width: 200px;" autocomplete="off"></td>
				</tr>
				<tr>
					<th style="width: 200px;" class="bg-light text-start">이름</th>
					<td class="text-start" colspan="3"><input type="text" name="ifmmName" style="min-width: 200px;" autocomplete="off"></td>
				</tr>
				<tr>
					<th style="width: 200px;" class="bg-light text-start">이메일</th>
					<td class="text-start" colspan="3">
						<input type="email" name="ifmeEmailFull" style="min-width: 200px;" autocomplete="off">
						<span class="ms-2"><a href="#" class="fs-6" style="text-decoration: none;">이메일 중복체크</a></span>
						<span class="ms-2">
						<input type="checkbox" name="ifmmEmailConsentNy" id="email_check" value="1"><label for="email_check">이메일 수신 동의</label>
						<input type="hidden" name="ifmmEmailConsentNy" id="email_check_hidden" value="0">
						</span>
					</td>
				</tr>
				<tr>
					<th style="width: 200px;" class="bg-light text-start">등급설정</th>
					<td class="text-start" colspan="3">
						<select name="ifmmGradeCd">
							<c:forEach items="${list}" var="item" varStatus="status">
								<option value="<c:out value="${item.ifcdSeq}"/>">
									<c:out value="${item.ifcdName}"/>
								</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th style="width: 200px;" class="bg-light text-start">주소</th>
					<td class="text-start" colspan="3">
						<input type="text" name="ifmaZipCode" placeholder="우편번호" autocomplete="off"> <button class="btn btn-sm btn-outline-dark">우편번호 검색</button>
						<br>
						<input type="text" name="ifmaAddress1" placeholder="주소" autocomplete="off">			
						<input type="text" name="ifmaAddress2" placeholder="상세주소" autocomplete="off">					
					</td>
				</tr>
				<tr>
					<th style="width: 200px;" class="bg-light text-start">휴대폰</th>
					<td class="text-start" colspan="3">
						<input type="text" name="ifmpNumberMobile" placeholder="01012345678" autocomplete="off">
						<input type="checkbox" name="ifmmSmsConsentNy" id="sms_check" value="1"><label for="sms_check">SMS 수신 동의</label>
						<input type="hidden" name="ifmmSmsConsentNy" id="sms_check_hidden" value="0">
					</td>
				</tr>
				<tr>
					<th style="width: 200px;" class="bg-light text-start">전화번호</th>
					<td class="text-start" colspan="3"><input type="text" name="ifmpNumberHome" placeholder="021234567" autocomplete="off"></td>
				</tr>
			</table>

			<div class="row mb-2">
				<div class="col col-md-12 d-flex">
					<i class="bi bi-caret-right-square-fill text-primary"></i> <span class="ms-2 fw-bold">추가 정보</span>
				</div>
			</div>

			<!-- table -->

			<table class="table">
				
				<tr>
					<th style="width: 200px;" class="bg-light text-start">생년월일</th>
					<td class="text-start"><input type="text" name="ifmmDob" placeholder="19960607" autocomplete="off"></td>
				</tr>
				<tr>
					<th style="width: 200px;" class="bg-light text-start">성별</th>
					<td class="text-start">
					<input type="radio" name="ifmmGenderCd" id="man" value="3"><label for="man">남성</label> 
					<input type="radio" name="ifmmGenderCd" id="woman" value="4"><label for="woman">여성</label>
					</td>
				</tr>
				<tr>
					<th style="width: 200px;" class="bg-light text-start">마케팅 수신동의</th>
					<td class="text-start">
						<select name="ifmmPushConsentNy">
							<option value="1">예</option>
							<option value="0">아니오</option>
						</select>
					</td>
				</tr>
			</table>
			
			<!-- 
			<div class="row mb-2">
				<div class="col col-md-12 d-flex">
					<i class="bi bi-caret-right-square-fill text-primary"></i> <span class="ms-2 fw-bold">관리자 운영 메모</span>
				</div>
			</div>

			<div class="row mb-4">
				<div class="col-12 col-lg-10 pe-0">
					<input type="text" class="form-control" id="inputMemo" name="inputMemo" autocomplete="off">
				</div>
				<div class="col-12 col-lg text-end">
					<a class="btn btn-outline-primary" onclick="add_row()" onclick="clearInput()">등록</a> <a
						class="btn btn-outline-danger" onclick="delete_row()">삭제</a>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table container2" style="border-collapse: separate; min-width: 800px;">
					<thead>
						<tr>
							<th style="width: 100px;">번호</th>
							<th>내용</th>
							<th style="width: 200px;">작성일</th>
							<th style="width: 100px;">작성자</th>
						</tr>
					</thead>
					<tbody id="my-tbody">
						
			<tr>
			<td colspan="5">관리자 메모가 없습니다.</td>
			</tr> 
		
					</tbody>
				</table>
			</div>
			 -->

			<div class="text-center">
				<input type="submit" class="btn btn-sm btn-outline-success border border-3 container1" value="등록">
				<a type="button" class="btn btn-sm btn-outline-dark border border-3 container1" href="/infra/member/memberList"> <!-- onClick="window.close()" -->취소</a>
			</div>


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
		
		
		if(document.getElementById("email_check").checked) {
		    document.getElementById("email_check_hidden").disabled = true;
		}
		
		if(document.getElementById("sms_check").checked) {
		    document.getElementById("sms_check_hidden").disabled = true;
		}

		
	</script>

</body>

</html>