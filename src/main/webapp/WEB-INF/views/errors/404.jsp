<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>404 Not Found</title>
<style>
#error_title {
	padding: 20px;
}

#error_discrption {
	padding: 20px;
}

.my_div {
	width: 1920px;
	height: 1080px;
	border: solid;
}

.my_bg {
	background-image: url("resources/images/ErrorBG.jpg");
	background-size: cover;
}
</style>
</head>
<body>
	<div class="my_div my_bg">
		<h1 id="error_title">페이지를 찾을 수 없습니다.</h1>
		<h2 id="error_discrption">페이지의 주소가 잘못 입력되었거나 삭제된 페이지입니다.</h2>
	</div>
</body>
</html>