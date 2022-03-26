<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<title>reCAPTCHA demo: Simple page</title>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>
	<form action="?" method="POST">
		<div class="g-recaptcha" data-sitekey="6Lfh2xIfAAAAADV0ECUUGtb1kWwEqZwh7z6iu-B8" data-callback="getSuccess"></div>
		<br />
		<input id="btnSubmit" type="submit" value="Submit">
	</form>
	
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
	
	var isSuccess = false;
	getSuccess = function(){
		isSuccess = true;
	}
	
	$("#btnSubmit").on("click", function(){
		if(!isSuccess){
			alert("로봇 발견");
			return false;
		}
	});
	
		
	</script>
	
	
</body>
</html>