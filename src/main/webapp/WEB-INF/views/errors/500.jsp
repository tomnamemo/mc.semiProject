 <%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>500 Internal Server Error</title>
 <style>
 #error_title {
padding-top: 100px;
	padding-left: 100px;
	
}

#error_discrption {
padding-top: 30px;
	padding-left: 120px;
}

.my_div {
	width: 100%;

	    height: 100vh;
	border: solid;
}


.my_bg {
	background-image: url("resources/assets/images/common/ErrorBG.jpg");
	background-size: cover;
}

</style>
</head>
<body>
	<div class="my_div my_bg">
		<h1 id="error_title">페이지를 표시할 수 없습니다.</h1>
		<h2 id="error_discrption">잠시 후 다시 시도해주세요</h2>
	</div>
</body>
 </html>