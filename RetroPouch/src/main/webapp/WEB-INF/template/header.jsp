<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <header class="header-container layout-header">
        <h1 class="hidden">나의 오랜 화장품 보관소 : Retro Pouch</h1>
        <dl class="rp-menubar layout-menubar">
            <dt class="hidden">Retro Pouch Logo</dt>
            <dd class="rp-menubar_logo rp-menu"><a href="/"><img src="media/imgs/main/logo.svg"></a></dd>
            <dt class="hidden">메뉴 버튼</dt>
            <dd class="rp-menubar_box rp-menu">
                <ul class="rp-menubar_menus">
                    <li class="rp-menubar_menu menu_product"><a href="">PRODUCTS</a></li>
                    <li class="rp-menubar_menu menu_notice"><a href="">NOTICE</a></li>
                </ul>
            </dd>
            <dt class="hidden">로그인 버튼</dt>
            <c:choose>
				<c:when test="${not empty userConfig.name}">
					<dt class="hidden">유저 정보</dt>
			            <dd class="rp-menubar_menu menu_login menu-user">
			                <div class="user-btn" value="${userConfig.idx }">${userConfig.nickname }님</div>
			                <ul class="user-info_box hidden">
			                    <li><a href="#">마이페이지</a></li>
			                    <li><a href="#">나의 파우치</a></li>
			                    <li><a href="/logout">로그아웃</a></li>
			                </ul>
			            </dd>
				</c:when>
				<c:otherwise>	
					<dd class="rp-menubar_menu menu_login rp-menu"><a href="/login">LOGIN</a></dd>
				</c:otherwise>	
			</c:choose>
        </dl>
    </header>