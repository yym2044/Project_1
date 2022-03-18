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
<%-- <link href="${path}/resources/css/bootstrap.min.css" rel="stylesheet"/> --%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<link href="${path}/resources/css/style.css" rel="stylesheet" />
<link href="${path}/resources/css/sidebars.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

<style type="text/css">
th, td {
	text-align: center;
}

a {
	color: black;
	text-decoration: none;
}
</style>

</head>
<body>


	<div class="container-fluid bg-light">

		<div class="row box-white pt-3 collapse show" id="firstRow">
			<div class="col-6 col-md-2">
				<img src="${path}/resources/images/xdmin/coupang.png" class="img-fluid">
			</div>
			<div class="col-6 col-md-5 fs-4 mb-2 d-md-block d-none">Coupang Management System Project_1</div>

			<!-- 
				<div class="col-12 col-md-2 fs-6 mb-2">
					<img src="${path}/resources/images/xdmin/user.png" style="width: 50px;">
					<div class="row">
							<a href="#">프로필</a>
					</div>	
				</div>
				 -->

			<div class="col-2 col-md-1 mb-2 p-0 text-end pe-2 d-md-block d-none">
				<img src="${path}/resources/images/xdmin/lee.jpg" style="width: 40px; height: 50px;"
					class="rounded-circle border border-5">
			</div>
			<div class="col-4 col-md mb-2 d-md-block d-none">
				<div class="row dropdown">
					<a href="#" class="link-dark text-decoration-none dropdown-toggle ps-0" data-bs-toggle="dropdown"> Yun (CEO) </a>
					<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
						<li><a class="dropdown-item" href="#">New project...</a></li>
						<li><a class="dropdown-item" href="#">Settings</a></li>
						<li><a class="dropdown-item" href="#">Profile</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Sign out</a></li>
					</ul>
				</div>
				<div class="row">Administrator</div>
			</div>

			<div class="col-3 col-md-1 mb-2 d-md-block d-none">
				<select class="form-select">
					<option>언어</option>
					<option>한국어</option>
					<option>Eng</option>
					<option>日本語</option>
				</select>
			</div>

		</div>
		<div class="row box-white collapse show" id="firstRow">
			<div class="col-10 col-md-10 fs-4 mb-2 d-md-none">Coupang Management System</div>
			<div class="col col-md text-end d-md-none"></div>
		</div>

		<!-- offcanvas start -->

		<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1"
			id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">

			<div class="offcanvas-header">
				<img class="bi me-2" width="120" height="30" src="${path}/resources/images/xdmin/coupang.png">
				<h3 class="offcanvas-title" id="offcanvasScrollingLabel">Admin Menu</h3>
				<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>

			<div class="offcanvas-body p-0">
				<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
					<a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom"> <span
						class="fs-5 fw-semibold">Collapsible</span>
					</a>


					<ul class="list-unstyled ps-0">
						<li class="mb-1"><a href="#" class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">Home</a>
							<div class="collapse" id="home-collapse">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
									<li><a href="#" class="link-dark rounded">Overview</a></li>
									<li><a href="#" class="link-dark rounded">Updates</a></li>
									<li><a href="#" class="link-dark rounded">Reports</a></li>
								</ul>
							</div></li>
						<li class="mb-1"><a href="#" class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">Dashboard</a>
							<div class="collapse" id="dashboard-collapse" style="">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
									<li><a href="#" class="link-dark rounded">Overview</a></li>
									<li><a href="#" class="link-dark rounded">Weekly</a></li>
									<li><a href="#" class="link-dark rounded">Monthly</a></li>
									<li><a href="#" class="link-dark rounded">Annually</a></li>
								</ul>
							</div></li>
						<li class="mb-1"><a href="#" class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">Orders</a>
							<div class="collapse" id="orders-collapse" style="">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
									<li><a href="#" class="link-dark rounded">New</a></li>
									<li><a href="#" class="link-dark rounded">Processed</a></li>
									<li><a href="#" class="link-dark rounded">Shipped</a></li>
									<li><a href="#" class="link-dark rounded">Returned</a></li>
								</ul>
							</div></li>
						<li class="border-top my-3"></li>
						<li class="mb-1"><a href="#" class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">Account</a>
							<div class="collapse" id="account-collapse" style="">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
									<li><a href="#" class="link-dark rounded">New...</a></li>
									<li><a href="#" class="link-dark rounded">Profile</a></li>
									<li><a href="#" class="link-dark rounded">Settings</a></li>
									<li><a href="#" class="link-dark rounded">Sign out</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>
			<div class="offcanvas-footer">
				<div class="dropdown border-top ms-3 py-3">
					<a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2"
						data-bs-toggle="dropdown" aria-expanded="false"> <img src="${path}/resources/images/xdmin/lee.jpg" alt=""
						width="40" height="50" class="rounded-circle border border-5 me-2"> <strong>Yun</strong>
					</a>
					<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
						<li><a class="dropdown-item" href="#">New project...</a></li>
						<li><a class="dropdown-item" href="#">Settings</a></li>
						<li><a class="dropdown-item" href="#">Profile</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Sign out</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- offcanvas end -->



		<div class="row bg-secondary">
			<div class="col">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link link-light">관리자화면</a></li>
					<li class="nav-item"><a class="nav-link link-light" href="#">Features</a></li>
					<li class="nav-item"><a class="nav-link link-light" href="#">시스템 관리</a></li>
					<li class="nav-item dropdown"><a class="nav-link link-light dropdown-toggle" href="#"
						data-bs-toggle="dropdown">Dropdown</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another Action</a></li>
							<li><a class="dropdown-item" href="#">Something else here</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="col d-flex justify-content-end">
				<button class="btn btn-secondary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling">
					<i class="bi bi-list"></i>
				</button>
			</div>
		</div>


		<!-- NavBar 수정할 거 -->
		<!-- 
			<div class="row d-flex align-items-center bg-secondary">
				<div class="col-md-2">
					<div class="row">
						<div class="col-md-12 fw-bold fs-4 text-center text-light" data-bs-toggle="collapse" data-bs-target="#firstRow">관리자화면</div>
					</div>
					<div class="row">
						<div class="col-md-12 text-center text-white">Administrator</div>
					</div>
				</div>
				<div class="col-md-1 p-2" style="width: 140px;">
					<button class="btn btn-lg bg-light">
						<div class="row">
							<i class="bi bi-gear"></i>
						</div>
						<div class="row">
							<span class="fs-6">환경설정</span>
						</div>
					</button>
				</div>
				<div class="col-md-1" style="width: 140px;">
					<button class="btn btn-lg bg-light">
						<div class="row">
							<i class="bi bi-people-fill"></i>
						</div>
						<div class="row">
							<span class="fs-6">회원관리</span>
						</div>
					</button>
				</div>
				<div class="col-md" style="width: 140px;">
					<button class="btn btn-lg bg-light">
						<div class="row">
							<i class="bi bi-card-list"></i>
						</div>
						<div class="row">
							<span class="fs-6">게시판관리</span>
						</div>
					</button>
				</div>
				<div class="col-md-1 d-flex justify-content-end">
					<button class="btn btn-light" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling">
						<i class="bi bi-list"></i>
					</button>
				</div>
			</div>
 			-->
		<!-- 
			<div class="row">
				<ul class="nav bg-secondary">
					<li class="nav-item"><a class="nav-link link-light" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link link-light" href="#">Features</a></li>
					<li class="nav-item"><a class="nav-link link-light" href="#">시스템 관리</a></li>
					<li class="nav-item"><a class="nav-link link-light" href="#">Dropdown</a></li>
				</ul>
			</div>
			 -->
	</div>

	<div class="container-fluid bg-light">
		<br>


		<!-- 웹 화면 -->
		<div class="width90 d-none d-sm-block">

			<h4 class="d-flex">
				<i class="bi bi-grip-vertical text-danger"></i>회원리스트
			</h4>

			<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item fs-6"><a href="#" style="text-decoration: none;">사이트운영</a></li>
					<li class="breadcrumb-item"><a href="#" style="text-decoration: none;">회원관리</a></li>
					<li class="breadcrumb-item active" aria-current="page"><b>회원리스트</b></li>
				</ol>
			</nav>

			<form method="get" action="/infra/member/memberList">
				<div class="row border border-1 my-2 box-white container1" id="searchBox">
					<div class="col-12 col-md-9">
						<div class="row my-2 pt-2">
							<div class="col-12 col-md-2 fw-bold">ㆍ회원등급</div>
							<div class="col-12 col-md-10">
								<div class="form-check-inline">
									<input type="radio" class="form-check-input" id="memberRankAll" name="shIfmmGrade" value="1" checked
										<c:if test="${vo.shIfmmGrade eq 1}">checked</c:if>> <label for="memberRankAll"
										class="form-check-label">전체</label>
								</div>
								<div class="form-check-inline">
									<input type="radio" class="form-check-input" id="memberRankGeneral" name="shIfmmGrade" value="2"
										<c:if test="${vo.shIfmmGrade eq 2}">checked</c:if>> <label for="memberRankGeneral"
										class="form-check-label">일반회원</label>
								</div>
								<div class="form-check-inline">
									<input type="radio" class="form-check-input" id="memberRankVip" name="shIfmmGrade" value="3"
										<c:if test="${vo.shIfmmGrade eq 3}">checked</c:if>> <label for="memberRankVip"
										class="form-check-label">VIP회원</label>
								</div>
							</div>
						</div>
						<div class="row my-2">
							<div class="col-12 col-md-2 fw-bold">ㆍ수신동의</div>
							<div class="col-12 col-md-10">
								<!-- 
								<div class="form-check-inline">
									<input type="checkbox" class="form-check-input" id="consentAll" name="shIfmmConsentNy" value="1" onclick="selectAll3(this)">
									<label for="consentAll" class="form-check-label">전체</label>
								</div>
								 -->
								<div class="form-check-inline">
									<input type="checkbox" name="shIfmmEmailConsentNy" id="email_check" value="1" class="form-check-input"
										<c:if test="${vo.shIfmmEmailConsentNy eq 1}">checked</c:if>> <label for="email_check"
										class="form-check-label">이메일</label>
								</div>
								<div class="form-check-inline">
									<input type="checkbox" name="shIfmmSmsConsentNy" id="sms_check" value="1" class="form-check-input"
										<c:if test="${vo.shIfmmSmsConsentNy eq 1}">checked</c:if>> <label for="sms_check"
										class="form-check-label">SMS</label>
								</div>
								<div class="form-check-inline">
									<input type="checkbox" name="shIfmmPushConsentNy" id="push_check" value="1" class="form-check-input"
										<c:if test="${vo.shIfmmPushConsentNy eq 1}">checked</c:if>> <label for="push_check"
										class="form-check-label">Push</label>
								</div>
							</div>
						</div>
						<div class="row my-2 pb-2">
							<div class="col-12 col-md-2 fw-bold">ㆍ검색어</div>
							<div class="col-md-10">

								<div class="row g-3 d-flex align-items-center">
									<div class="col-4 col-md-2">
										<select name="shIfscSeq" id="shIfscSeq" class="form-select form-select-sm">
											<option value="0">선택하세요</option>
											<c:forEach items="${listSearch}" var="item" varStatus="status">
												<option value="${item.ifscSeq}" <c:if test="${vo.shIfscSeq eq item.ifscSeq}">selected</c:if>>
													<c:out value="${item.ifscName}" />
												</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-8 col-md-5">
										<input name="searchBar" id="searchBar" disabled class="form-control form-control-sm" placeholder="search.."
											 <c:if test="${vo.shIfscSeq ne 0}">value="${vo.searchBar}"</c:if> autocomplete="off">
											
									</div>
									<!-- 
									<div class="col-9 col-md">
										<input type="checkbox" class="form-check-input" id="memberOnline"> <label for="memberOnline"
											class="form-check-label">현재 접속중인 회원만 검색</label>
									</div>
									 -->
									<div class="col col-md d-md-none mt-3">
										<button class="btn btn-info btn-sm">
											<span class="text-white">검색</span>
										</button>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-3 text-end d-md-block d-none" style="margin: auto;">

						<input type="submit" id="btnSubmit" class="btn btn-info btn-lg text-white" value="검색">

						<!-- 
						<button class="btn btn-info btn-lg">
							<span class="text-white">검색</span>
						</button>
						 -->
					</div>
				</div>
			</form>
		</div>

		<!-- 모바일 -->
		<div class="width90 d-sm-none">

			<div class="row mb-2">
				<div class="col">
					<a class="btn btn-outline-secondary" data-bs-toggle="collapse" data-bs-target="#filterMobile">상세검색</a>
				</div>
			</div>
			<div class="box-light">
				<div class="collapse" id="filterMobile">

					<div class="row d-flex align-items-center mb-1">
						<div class="col-3 fw-bold">회원등급</div>
						<div class="col">
							<select class="form-select">
								<option>전체</option>
								<option>탈퇴대기자</option>
								<option>가입신청자</option>
								<option>일반회원</option>
								<option>VIP회원</option>
							</select>
						</div>
					</div>

					<div class="row d-flex align-items-center mb-1">
						<div class="col-3 fw-bold">수신동의</div>
						<div class="col">
							<select class="form-select">
								<option>전체</option>
								<option>SMS</option>
								<option>E-MAIL</option>
							</select>
						</div>
					</div>

					<div class="row d-flex align-items-center mb-2">
						<div class="col-3 fw-bold">검색어</div>
						<div class="col">
							<input type="text" class="form-control" placeholder="이름, 아이디, 이메일">
						</div>
					</div>

					<div class="row d-flex justify-content-center">
						<div class="col d-flex justify-content-center">
							<a class="btn btn-info btn-sm" style="width: 150px;"> <span class="text-white fw-bold">검색</span>
							</a>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- 
		<div class="width92">
			<div class="row">
				<form>
					<div class="col-12 col-md ms-1 me-0 my-1 p-auto">
						
						 <div class="btn-toolbar justify-content-end" role="toolbar" aria-label="Toolbar with button groups">
							<div class="btn-group me-2" role="group" aria-label="First group">
							  <input type="submit" class="btn btn-secondary" value="View">
							</div>
							<div class="btn-group me-2" role="group" aria-label="Second group">
							  <a type="button" class="btn btn-secondary">5</a>
							  <a type="button" class="btn btn-secondary">10</a>
							  <a type="button" class="btn btn-secondary">20</a>
							</div>
						 </div>
						 
						 <div class="text-end">
							 <div class="btn-group btn-group-sm box-white" role="group">
								<input type="submit" class="btn-check" id="btnradio1" autocomplete="off"> <label class="btn btn-outline-primary" for="btnradio1">view</label> 
								<input type="radio" class="btn-check" name="rowNumToShow" id="btnradio2" autocomplete="off" value="5"> <label class="btn btn-outline-primary" for="btnradio2">5</label> 
								<input type="radio" class="btn-check" name="rowNumToShow" id="btnradio3" autocomplete="off" value="10"> <label class="btn btn-outline-primary" for="btnradio3">10</label> 
								<input type="radio" class="btn-check" name="rowNumToShow" id="btnradio4" autocomplete="off" value="20"> <label class="btn btn-outline-primary" for="btnradio4">20</label> 
								<input type="radio" class="btn-check" name="rowNumToShow" id="btnradio5" autocomplete="off" value="50"> <label class="btn btn-outline-primary" for="btnradio5">50</label> 
								<input type="radio" class="btn-check" name="rowNumToShow" id="btnradio6" autocomplete="off" value="100"> <label class="btn btn-outline-primary" for="btnradio6">100</label>
							 </div>
						</div>
					 </div>
				 </form>
			</div>
		</div>
		 -->
		<br> <br>
		<form method="get" action="/infra/member/updateDelNy">
			<div class="width92">
				<div class="row">
					<div class="col-8 col-md-3 p-auto d-flex justify-content-start align-items-center fs-5" style="margin-left: 12px;">

						검색결과 : <b class="px-1">${fn:length(list)}</b> / 총 <b class="px-1">${count2}</b>명

					</div>
					<!-- 
				<div class="col-1 col-md-1 ms-1 me-0 p-auto">
					<a class="btn btn-outline-success" type="button" data-bs-toggle="modal" data-bs-target="#excelModal"> <i
						class="bi bi-file-earmark-excel"></i>
					</a>
				</div>
				 -->

					<div class="col-12 col-md ms-1 me-0 my-1 p-auto">
						<div class="text-end">

							<div class="btn-toolbar-sm justify-content-end" role="toolbar" aria-label="Toolbar with button groups">
								<div class="btn-group" role="group" aria-label="First group">
									<button type="button" class="btn btn-sm btn-outline-dark" disabled>View</button>
								</div>
								<div class="btn-group me-2" role="group" aria-label="Second group">
									<a type="button" class="btn btn-sm btn-<c:if test="${vo.rowNumToShow eq 3}">outline-</c:if>secondary"
										href="/infra/member/memberList?rowNumToShow=3">3</a> <a type="button"
										class="btn btn-sm btn-<c:if test="${vo.rowNumToShow eq 5}">outline-</c:if>secondary"
										href="/infra/member/memberList?rowNumToShow=5">5</a> <a type="button"
										class="btn btn-sm btn-<c:if test="${vo.rowNumToShow eq 10}">outline-</c:if>secondary"
										href="/infra/member/memberList?rowNumToShow=10">10</a> <a type="button"
										class="btn btn-sm btn-<c:if test="${vo.rowNumToShow eq 20}">outline-</c:if>secondary"
										href="/infra/member/memberList?rowNumToShow=20">20</a> <a type="button"
										class="btn btn-sm btn-<c:if test="${vo.rowNumToShow eq 50}">outline-</c:if>secondary"
										href="/infra/member/memberList?rowNumToShow=50">50</a> <a type="button"
										class="btn btn-sm btn-<c:if test="${vo.rowNumToShow eq 100}">outline-</c:if>secondary"
										href="/infra/member/memberList?rowNumToShow=100">100</a>

								</div>
							</div>

						</div>
					</div>

				</div>

				<!-- ---------------테이블 부분----------------- -->

				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<table class="table table-hover table-sm border border-1 box-white"
							style="min-width: 1000px; border-collapse: collapse;">
							<thead>
								<tr>
									<th><input type="checkbox" name="checkbox1" disabled class="form-check-input"></th>
									<th>번호</th>
									<th>아이디</th>
									<th>이름</th>
									<th>회원등급</th>
									<th>상태</th>
									<th>가입일</th>
									<th>관리</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center" colspan="8">검색결과가 없습니다.</td>
								</tr>
							</tbody>
						</table>
					</c:when>

					<c:otherwise>

						<table class="table table-hover table-sm border border-1 box-white"
							style="min-width: 1000px; border-collapse: collapse;">
							<thead>
								<tr>
									<th><input type="checkbox" name="checkbox1" onclick="selectAll1(this)" class="form-check-input"></th>
									<th><c:if test="${vo.orderby eq 'bottom' or vo.sort ne 'sortNo'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortNo&orderby=top">번호</a>
										</c:if> <c:if test="${vo.orderby eq 'top' and vo.sort eq 'sortNo'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortNo&orderby=bottom">번호</a>
										</c:if></th>
									<th><c:if test="${vo.orderby eq 'bottom' or vo.sort ne 'sortId'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortId&orderby=top">아이디</a>
										</c:if> <c:if test="${vo.orderby eq 'top' and vo.sort eq 'sortId'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortId&orderby=bottom">아이디</a>
										</c:if></th>
									<th><c:if test="${vo.orderby ne 'top' or vo.sort ne 'sortName'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortName&orderby=top">이름</a>
										</c:if> <c:if test="${vo.orderby eq 'top' and vo.sort eq 'sortName'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortName&orderby=bottom">이름</a>
										</c:if></th>
									<th><c:if test="${vo.orderby ne 'top' or vo.sort ne 'sortGrade'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortGrade&orderby=top">회원등급</a>
										</c:if> <c:if test="${vo.orderby eq 'top' and vo.sort eq 'sortGrade'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortGrade&orderby=bottom">회원등급</a>
										</c:if></th>
									<th>상태</th>
									<th><c:if test="${vo.orderby ne 'top' or vo.sort ne 'sortRedt'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortRedt&orderby=top">가입일</a>
										</c:if> <c:if test="${vo.orderby eq 'top' and vo.sort eq 'sortRedt'}">
											<a href="/infra/member/memberList?rowNumToShow=${vo.rowNumToShow}&sort=sortRedt&orderby=bottom">가입일</a>
										</c:if></th>
									<th>관리</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="item" varStatus="status">
									<tr>
										<td><input type="checkbox" name="checkbox1" value="<c:out value="${item.ifmmSeq}"/>"
											class="form-check-input"></td>
										<td><c:out value="${item.ifmmSeq}" /></td>
										<td><c:out value="${item.ifmmId}" /></td>
										<td><c:out value="${item.ifmmName}" /></td>
										<td <c:if test="${item.ifmmGrade eq '일반회원'}">class="text-primary"</c:if>
											<c:if test="${item.ifmmGrade eq 'VIP회원'}">class="text-danger"</c:if>><c:out value="${item.ifmmGrade}" /></td>
										<td <c:if test="${item.ifmmStatus eq '탈퇴대기'}">class="text-danger"</c:if>><c:out
												value="${item.ifmmStatus}" /></td>
										<td><c:out value="${item.ifmmRegDate}" /></td>
										<td>
											<div class="d-flex justify-content-center align-items-center">
												<a href="#" class="btn btn-sm btn-outline-dark py-0"><i class="bi bi-chat-right-dots"></i></a> <a href="#"
													class="btn btn-sm btn-outline-dark py-0"><i class="bi bi-envelope"></i></a> <a
													href="/infra/member/memberView?ifmmSeq=${item.ifmmSeq}" class="btn btn-sm btn-outline-dark py-0"> <%-- onclick="window.open('memberView?ifmmSeq=${item.ifmmSeq}','name','resizable=no width=1000 height=500');return false" --%>관리
												</a>
											</div>
										</td>
									<tr>
								</c:forEach>
							</tbody>
						</table>


					</c:otherwise>
				</c:choose>

				<div class="row ps-2">
					<div class="col col-md-4 ms-1 p-0">
						<a class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteModal"> <i class="bi bi-trash"></i>
						</a> <a class="btn btn-outline-primary" href="/infra/member/memberForm"> <!-- onclick="window.open('memberForm','name','resizable=no width=1000 height=500');return false" -->
							<i class="bi bi-plus-square"></i>
						</a>
					</div>
					<!-- 같은줄 or 따로뺄지 -->
					<!-- 
					<div class="col col-md-6">
						<nav>
							<ul class="pagination">
								<li class="page-item disabled"><a class="page-link" href="#"><<</a></li>
								<li class="page-item disabled"><a class="page-link" href="#"><</a></li>
								<li class="page-item disabled"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#">></a></li>
								<li class="page-item"><a class="page-link" href="#">>></a></li>
							</ul>
						</nav>
					</div>
					 -->
				</div>

			</div>

			<!-- 같은줄 or 따로뺄지 -->

			<nav class="mt-3" aria-label="...">
				<ul class="pagination justify-content-center">
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
						<li class="page-item"><a class="page-link"
							href="/infra/member/memberList?thisPage=${vo.startPage - 1}&rowNumToShow=${vo.rowNumToShow}">Previous</a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
								<li class="page-item active"><a class="page-link"
									href="/infra/member/memberList?thisPage=${i.index}&rowNumToShow=${vo.rowNumToShow}">${i.index}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="/infra/member/memberList?thisPage=${i.index}&rowNumToShow=${vo.rowNumToShow}">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${vo.endPage ne vo.totalPages}">
						<li class="page-item"><a class="page-link"
							href="/infra/member/memberList?thisPage=${vo.endPage + 1}&rowNumToShow=${vo.rowNumToShow}">Next</a></li>
					</c:if>
				</ul>
			</nav>
			<!-- 
			<nav>
				<ul class="pagination justify-content-center">
					
					<li class="page-item disabled"><a class="page-link" href="#"><<</a></li>
					<li class="page-item disabled"><a class="page-link" href="#"><</a></li>
					
					<li class="page-item"><a class="page-link">1</a></li>
					<li class="page-item"><a class="page-link">2</a></li>
					<li class="page-item"><a class="page-link">3</a></li>
					<li class="page-item"><a class="page-link">4</a></li>
					<li class="page-item"><a class="page-link">5</a></li>
					
					<li class="page-item"><a class="page-link" href="#">></a></li>
					<li class="page-item"><a class="page-link" href="#">>></a></li>
					
				</ul>
			</nav>
			 -->
			<br> <br>

			<!-- footer -->
			<!-- 
		<div class="container-fluid">
			<div class="row">
				<p class="text-center">
					<br> <br>Copyright © Coupang Corp. 2010-2021 All Rights Reserved.
				</p>
				<br> <br> <br> <br> <br>
			</div>
		</div>
 		-->

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
							<input type="submit" class="btn btn-primary" value="확인">
							<button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</div>
		</form>

		<!-- excelModal -->
		<div class="modal fade" id="excelModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title fw-bold" id="staticBackdropLabel">Export data to Excel</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="bg-light text-center">
							<span class="fw-bold">파일명</span> <input type="text"> <span class="fw-bold">.csv</span>
						</div>
						<br>
						<table class="table table-sm table-hover">
							<thead class="bg-light">
								<tr class="text-center">
									<td colspan="4">출력항목</td>
								</tr>
							</thead>
							<tr>
								<td><input type="checkbox" class="form-check-input" id="ch11"></td>
								<td><label for="ch11" class="form-check-label">아이디</label></td>
								<td><input type="checkbox" class="form-check-input" id="ch12"></td>
								<td><label for="ch12" class="form-check-label">이름</label></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="form-check-input" id="ch1"></td>
								<td><label for="ch1" class="form-check-label">이메일</label></td>
								<td><input type="checkbox" class="form-check-input" id="ch2"></td>
								<td><label for="ch2" class="form-check-label">생년월일</label></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="form-check-input" id="ch3"></td>
								<td><label for="ch3" class="form-check-label">메일수신동의</label></td>
								<td><input type="checkbox" class="form-check-input" id="ch4"></td>
								<td><label for="ch4" class="form-check-label">주소</label></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="form-check-input" id="ch5"></td>
								<td><label for="ch5" class="form-check-label">전화번호</label></td>
								<td><input type="checkbox" class="form-check-input" id="ch6"></td>
								<td><label for="ch6" class="form-check-label">휴대전화</label></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="form-check-input" id="ch7"></td>
								<td><label for="ch7" class="form-check-label">SMS수신동의</label></td>
								<td><input type="checkbox" class="form-check-input" id="ch8"></td>
								<td><label for="ch8" class="form-check-label">별명</label></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="form-check-input" id="ch9"></td>
								<td><label for="ch9" class="form-check-label">등급</label></td>
								<td><input type="checkbox" class="form-check-input" id="ch10"></td>
								<td><label for="ch10" class="form-check-label">성별</label></td>
							</tr>

						</table>

					</div>
					<div class="modal-footer d-flex justify-content-center">
						<button type="button" class="btn btn-primary">다운</button>
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- footer -->

	<div class="container-fluid">
		<footer class="py-3 my-4">
			<ul class="nav justify-content-center border-bottom pb-3 mb-3">
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
				<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
			</ul>
			<p class="text-center text-muted">© 2021 Company, Inc</p>
		</footer>
	</div>






	<script type="text/javascript">

	function selectAll1(selectAll1) {
		const checkboxes 
			= document.getElementsByName("checkbox1");
		
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll1.checked;
		})
	}
	
	function selectAll2(selectAll2) {
		const checkboxes 
			= document.getElementsByName("memberRank");
		
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll2.checked;
		})
	}
	
	function selectAll3(selectAll3) {
		const checkboxes
			= document.getElementsByName("shIfmmConsentNy");
		
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll3.checked;
		})
	}
	
    function toggleImg() {
      document.getElementById("img").src = "${path}/resources/images/xdmin/up.png";
    }
    
	</script>






	<%-- <c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<tr>
										<td class="text-center" colspan="9">There is no data!</td>
									</tr>
								</c:when>
								<c:otherwise>
							
									<table class="table border border-1 box-white container1" style="min-width: 1000px; border-collapse: separate;">
										<c:forEach items="${list}" var="item" varStatus="status">
											<tr>
												<td><c:out value="${item.ifmmSeq}" /></td>
												<td><c:out value="${item.ifmmName}"/></td>					
												<td><c:out value="${item.ifmmId}"/></td>					
												<td><c:out value="${item.ifmmGenderName}"/></td>					
												<td><c:out value="${item.ifmmDob}"/></td>					
												<td><c:out value="${item.ifmmFavoriteColor}"/></td>					
												<td><c:out value="${item.ifmmDelNy}"/></td>					
											<tr>
										</c:forEach>
									</table>
									
								</c:otherwise>
							</c:choose> --%>

	<%-- <script src="${path}/resources/js/bootstrap.bundel.min.js"></script> --%>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	<script src="${path}/resources/js/sidebars.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/js/validation.js"></script>

	<script type="text/javascript">
	
	
	$("#shIfscSeq").on("change", function(){
		if($("#shIfscSeq").val() == 0){
			$("#searchBar").attr('disabled', true);
			$("#searchBar").val('');
		} else if ($("#shIfscSeq").val() != 0) {
			$("#searchBar").attr('disabled', false);
		}
	});
	
	$("#btnSubmit").on("click", function(){
	
		
		if($("#shIfscSeq").val() == 1){
			if(!checkNull($("#searchBar"), $("#searchBar").val(), "이름을 입력해주세요")) {
				return false;
			}
		}
		if($("#shIfscSeq").val() == 2){
			if(!checkNull($("#searchBar"), $("#searchBar").val(), "아이디를 입력해주세요")) {
				return false;
			}
		}
		if($("#shIfscSeq").val() == 3){
			if(!checkNull($("#searchBar"), $("#searchBar").val(), "이메일을 입력해주세요")) {
				return false;
			}
		}
		
		
	});
	
	</script>

</body>
</html>

<%-- <c:out value="${item.ifmmSeq}"/> | <c:out value="${item.ifmmId}"/> | <c:out value="${item.ifmmName}"/> | <c:out value="${item.ifmmId}"/> | <c:out value="${item.ifmmGenderName}"/> | <c:out value="${item.ifmmDob}"/> | <c:out value="${item.ifmmFavoriteColor}"/> | <c:out value="${item.ifmmDelNy}"/> <br> --%>