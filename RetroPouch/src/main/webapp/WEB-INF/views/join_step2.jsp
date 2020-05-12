<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입&boxv;RETRO POUCH</title>
    <link rel="shortcut icon" type="image/x-icon" href="media/imgs/main/retropouch.ico">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
    <style>
        html, body, div, span, applet, object, iframe,
        h1, h2, h3, h4, h5, h6, p, blockquote, pre,
        a, abbr, acronym, address, big, cite, code,
        del, dfn, em, font, img, ins, kbd, q, s, samp,
        small, strike, strong, sub, sup, tt, var,
        b, u, i, center,
        dl, dt, dd, ol, ul, li,
        fieldset, form, label, legend,
        table, caption, tbody, tfoot, thead, tr, th, td {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
            font-size: 100%;
            vertical-align: baseline;
            background: transparent;
            list-style: none;
        }

        * {
            font-family: 'Do Hyeon';
        }

        button {
            cursor: pointer;
            padding: 10px;
            border: none;
            vertical-align: middle;
            border-radius: 4px;
        }
        .hidden {
            display: none;
            overflow: hidden;
            z-index: -9999;
        }

        body {
            background: #d5c9c8;
        }

        .join-container {
            width: 550px;
            padding: 15px;
            margin: 50px auto;

        }

        .join-container>h3 {
            text-align: center;
        }

        .join-form {
            padding: 20px 15px;
        }

        .join-form .row {
            font-size: 20px;
            margin: 40px 0;
            position: relative;
            z-index: 0;
        }

        .row input {
            font-size: 18px;
            border: none;
            outline: none;
            color: #444;
            background: transparent;
            padding: 5px 5px;
            height: 40px;
            border-bottom: 1px solid #444;
        }

        .row .at_sign {
            padding-right: 5px;
            padding-bottom: 16px;
            border-bottom: 1px solid #444;
        }

        .row input::placeholder {
            color: #adadad;
        }

        .row .email-input {
            width: 130px;
        }

        .row select {
            font-size: 15px;
            padding: 10px 15px;
            vertical-align: middle;
        }

        .row .long-input {
            width: 80%;
        }

        .row span::before {
            content: attr(data-placeholder);
            position: absolute;
            top: 50%; left: 5px;
            color: #adadad;
            transform: translateY(-50%);
            transition: .3s;
            z-index: -1;
        }

        .focus + span::before {
            top: -15px; left: 1px;
            color: #32405b;
            transform: scale(0.9);
        }

        .join-form_btn-box{
            position: relative;
        }

        .join-form_btn-box button {
            padding: 15px 30px;
            font-size: 1.1em;
            position: absolute;
        }

        .join-form_btn-box .backpage_btn {
            right: 210px;
        }

        .join-form_btn-box .join_btn {
            width: 200px;
            right: 0;
        }

    </style>
</head>
<body ondragstart='return false' onselectstart='return false' oncontextmenu='return false'>
<main class="main-container">
    <h2 class="hidden">회원가입 페이지</h2>
    <div class="join-container">
        <h3><img src="media/imgs/main/logo.svg"></h3>
        <form class="join-form" action="/joinCreate" method="GET">
            <fieldset>
                <legend class="hidden">회원가입 폼</legend>
                <p class="row">
                    <input type="text" class="email-input email_id" autocomplete="off"  name="id"><span class="at_sign" data-placeholder="이메일">@</span><!--
                    --><input type="text" class="email-input email_domain" autocomplete="off" placeholder="직접입력" name="email">
                    <select class="email_domain-select">
                        <option value="1">직접 입력</option>
                        <option>naver.com</option>
                        <option>google.com</option>
                        <option>daum.net</option>
                        <option>outlook.com</option>
                        <option>icloud.com</option>
                    </select>
                    <button type="button">중복확인</button>
                    <input type="hidden">
                </p>
                <p class="row">
                    <input type="text" class="long-input" name="nickname" autocomplete="off">
                    <span data-placeholder="닉네임"></span>
                </p>
                <p class="row">
                    <input type="password" class="long-input" name="password">
                    <span data-placeholder="비밀번호"></span>
                </p>
                <p class="row">
                    <input type="password" class="long-input">
                    <span data-placeholder="비밀번호 확인"></span>
                </p>
                <p class="row">
                    <span>휴대전화 인증</span>
                    <button type="button" class="phone-check">인증하기</button>
                </p>
                <p class="join-form_btn-box">
                    <button type="button" class="backpage_btn">이전</button>
                    <button type="submit" class="join_btn">회원가입</button>
                </p>
            </fieldset>
        </form>
    </div>
</main>
<script src="js/jquery.min.js"></script>
<script language="JavaScript" type="text/javascript">
    let $phone = $('.phone-check'),
        $input = $('.row>input'),
        $domin = $('.email_domain'),
        $domain_select = $('.email_domain-select');

    $phone.on("click", function () {
        window.open("phone_verify.html","newWindow", "top=150%, left=700%, width=500, height=550, directories=no,location=no, menubar=no, resizable=no, status=no, toolbar=no");
    });

    $input.on("focus", function () {
        $(this).addClass("focus");
    });

    $input.on("blur", function () {
        if($(this).val().length === 0) {
            $(this).removeClass("focus");
        }
    });

    $domain_select.on("change", function () {
        $('.email_domain-select option:selected').each(function () {
            if($(this).val() == 1) {
                $domin.val('');
                $domin.attr('disabled', false);
            } else {
                $domin.val($(this).text());
                $domin.attr('disabled', true);
            }
        })
    })

    $(document).ready(function () {
        $(document).bind('keydown', function (e) {
            if(e.keyCode == 123) {
                e.preventDefault();
                e.returnValue = false;
            }
        })
    })
    
    

</script>
</body>
</html>