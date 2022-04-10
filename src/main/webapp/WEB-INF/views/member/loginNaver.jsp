<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- 추가 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("Yn6Xl_G7XXgjvBNNusVk", "http://localhost:8080/infra/member/loginNaver");
  // 접근 토큰 값 출력
  //alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
   
//    alert(naver_id_login.getProfileData('email'));
//    alert(naver_id_login.getProfileData('nickname'));
//    alert(naver_id_login.getProfileData('age'));
     
    //
    $.ajax({
  	  async: true
  	  ,cache: false
  	  ,type:"post"
  	  ,url: "/infra/member/loginProcSns"
  	  /* ,data : { "ifmmId" : res.id } */
  	  ,data : { "ifmeEmailFull" : naver_id_login.getProfileData('email') }
  	  ,success: function(response){
  		  if(response.rt == "successGoIndex") {
  			  location.href = "/infra/index/indexView";
  		  } else if (response.rt == "successGoMain") {
  			  location.href = "/infra/coupang/mainPage";
  		  } else {
  			  alert("로그인 실패");
  		  }
  	  }
  	  ,error : function(jqXHR, textStatus, errorThrown){
  			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
  		}
    });
    //
  }
  
</script>
</body>
</html>