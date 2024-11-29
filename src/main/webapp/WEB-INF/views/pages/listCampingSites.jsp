<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<main class="ui-result">
	<section>
		<article>
			<div class="content">
				<form class="ui-form search result">
					<fieldset>
						<ul>
							<li class="modi">
								<div class="field search">
									<label class="label clipped" for="search_camp_name">캠핑장
										이름 입력</label>
									<div class="ui-input">
										<div class="input outlined address-search">
											<input id="search_camp_name" name="search_camp_name"
												type="text" class="custom-text"
												placeholder="캠핑장 이름을 입력해주세요.">
										</div>
									</div>
								</div> <!-- 241129 세미 변경 -->
								<div class="ux-button-bar">
									<button class="ux-button contained primary">
										<span class="label">검색</span>
									</button>
								</div>
							</li>
						</ul>
					</fieldset>
				</form>
				<div class="ux-divider mobile-only"></div>
			</div>
			<div class="lds-grid">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
			<div class="content result">
				<div class="res r1">
					<ul id="itemgrid" class="camp-list">
						<li id="camp0" class="camp">
							<div class="item-image">
								<img class="img" src="${contextPath}/resources/assets/images/camp/temp.jpg"
									alt="캠핑장대표사진">
							</div>
							<div class="item-info">
								<h4 class="info-title">캠핑장 이름</h4>
								<br>
								<p class="info-phone">
									<span class="phone"></span>
								</p>
								<p class="info-address">
									<span class="address"></span>
								</p>
							</div>
							<div class="item-detail">
								<div class="ux-button-bar">
									<button type="button" class="ux-button outlined reserv">
										<span class="label">예약하기</span>
									</button>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</article>
	</section>
</main>
