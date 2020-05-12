<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>약관동의&boxv;RETRO POUCH</title>
    <link rel="shortcut icon" type="image/x-icon" href="media/imgs/main/retropouch.ico">
    <style>
        ul {
            list-style: none;
            margin: 0; padding: 0;
        }
        .main-container {
            width: 100%;
        }

        .agreement-container {
            width: 80%;
            margin: 0 auto;
        }

        .checkbox-container {
            width: 640px;
            margin: 0 auto;
        }

        .use-agreement, .info-agreement {
            width: 100%; height: 300px;
            background: #adadad;
            overflow: auto;
        }

        .use-agreement>ul{
            width: 100%;
        }
        .use-agreement>ul>li {
            width: 95%; padding: 10px;
            word-break:break-all;
        }
    </style>
</head>
<body>
<main class="main-container">
    <div class="agreement-container">
        <div class="checkbox-container">
            <div>
                <p><input type="checkbox"/>이용약관 동의(필수)</p>
                <div class="use-agreement">
                    <ul>
                        <li>asdasdasdasdasdjfghalsjkdfhlkajshdfkajshdfklashdfkhaslkdfhaslkjdfhalksjhdflkasjhdflkashdkl</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                    </ul>
                </div>
                <p><input type="checkbox"/>개인정보 수집·이용 동의(필수)</p>
                <div class="info-agreement">
                    <ul>
                        <li>asdasdasdasdasdjfghalsjkdfhlkajshdfkajshdfklashdfkhaslkdfhaslkjdfhalksjhdflkasjhdflkashdkl</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                        <li>asd</li>
                    </ul>
                </div>
            </div>
            <a href="">취소</a>
            <a href="/joinAgain">동의</a>
        </div>
    </div>
</main>
</body>
</html>