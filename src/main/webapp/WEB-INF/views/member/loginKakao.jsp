<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- 추가 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카카오 로그인 리다이렉트 페이지</title>
</head>
<body>
	
	<a href="javascript:kakaoLogin();"><img src="${path}/resources/images/xdmin/sns_icon/icon_round_kakaotalk_48.png" style="border-radius: 50%;"
							class="btn-3d yellow"></a>	
	
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

	<script type="text/javascript">
		Kakao.init("5ed5d21a3ed5c47a1675f773a28a15f9");

		Kakao.Auth.login({
			scope:'profile_nickname, profile_image, account_email, gender'
			success: function(authOb) {
				Kakao.API.request({
					url:'/v2/user/me',
					success: function(res) {
						console.log(res);
						
						var id = res.id;
						var email = res.kakao_account.email;
						var name = res.properties.nickname;
						var html = '<BR>' + email + '<BR>' + name;
						
						$('body').append(html);
					}
		})
	</script>

</body>
</html>