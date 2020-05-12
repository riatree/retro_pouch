<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>로그인 &boxv; RETRO POUCH</title>
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
	<link href="css/login.css" rel="stylesheet">
</head>
<body>
<main class="main-container">
    <div class="login-container">
        <h2><a href="/"><img src="/media/imgs/main/logo.svg"></a></h2>
        <form class="login-form" action="/login" method="POST">
            <fieldset>
                <legend class="hidden">로그인 품</legend>
                <p class="row">
                    <input type="text" autocomplete="off" name="id" />
                    <span data-placeholder="Username"></span>
                </p>
                <p class="row">
                    <input type="password" name="password" />
                    <span data-placeholder="Password"></span>
                </p>
                <input type="submit" class="login-btn" value="Login"/>
            </fieldset>
        </form>
    </div>
        <div class="btn-container">
            <ul class="other login-box hidden">
                <li>Google</li>
                <li>FaceBook</li>
                <li>Kakao</li>
            </ul>
            <ul class="find user-info">
                <li><a href="">아이디 찾기</a></li>
                <li><a href="">비밀번호 찾기</a></li>
                <li><a href="/join">회원가입</a></li>
            </ul>
        </div>

</main>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
    let $input = $('.row>input');

    $input.on("focus", function () {
        $(this).addClass("focus");
    });

    $input.on("blur", function () {
        if($(this).val().length === 0) {
            $(this).removeClass("focus");
        }
    });
</script>
</body>
</html>