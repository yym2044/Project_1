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


	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script type="text/javascript">
		Kakao.init("5ed5d21a3ed5c47a1675f773a28a15f9");
		console.log(Kakao.isInitialized());

		Kakao.Auth.login({
			success : function(authObj) {
				console.log(authObj);

				Kakao.API.request({
					url : '/v2/user/me',
					success : function(res) {

						console.log(res);
						console.log(res.id);
						console.log(res.kakao_account.email);
						console.log(res.properties.nickname);

					}
				})
			}
		});
	</script>

</body>
</html>