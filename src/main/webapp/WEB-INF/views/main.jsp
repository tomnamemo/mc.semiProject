<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
  request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<main class="ui-index">
	<section class="has-slide">
		<article>
			<div class="swiper-container main-swiper">
				<div class="swiper-wrapper main">
					<div class="swiper-slide main-slide-1"></div>
					<div class="swiper-slide main-slide-2"></div>
					<div class="swiper-slide main-slide-3"></div>
				</div>
			</div>
			<div class="overlay">
				<div class="main-content">
					<div class="text-slide-list">
						<ul>
							<li class="title"><h3>캠핑의 모든 즐거움,</h3></li>
							<li><h3>어디로 떠나고 싶으신가요?</h3></li>
							<li class="desc"><p>
									자연이 주는 편안함과<br class="mobile-only"> 다채로운 액티비티가 당신을 기다립니다!
								</p></li>
							<li class="pc-only"><p>연인 혹은 가족과 소중한 추억을 만들어요</p></li>
							<li>
								<form class="ui-form search">
									<fieldset>
										<ul>
											<li>
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
												</div>
											</li>
											<li>
												<div class="field">
													<label class="label clipped">지역 / 날짜 선택</label>
													<div class="ui-input">
														<div class="inputs">
															<div class="input gsb-1 outlined">
																<select class="selectmenu">
																	<option disabled selected class="placeholder">지역을
																		선택하세요.</option>
																	<option value="서울">서울</option>
																	<option value="인천">인천</option>
																	<option value="여수">여수</option>
																	<option value="대전">대전</option>
																	<option value="전주">전주</option>
																	<option value="강릉">강릉</option>
																	<option value="경주">경주</option>
																	<option value="울산">울산</option>
																	<option value="군산">군산</option>
																	<option value="속초">속초</option>
																	<option value="대구">대구</option>
																	<option value="평창">평창</option>
																	<option value="양양">양양</option>
																	<option value="부산">부산</option>
																	<option value="제주">제주</option>
																</select> <span class="icon valid"></span>
															</div>
															<div class="input ui-input">
																<div class="inputs outlined fromto-date">
																	<div class="input">
																		<input type="text" class="datepicker"
																			value="2024.12.23">
																	</div>
																	<span class="fromto">-</span>
																	<div class="input">
																		<input type="text" class="datepicker"
																			value="2024.12.26">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="ux-button-bar">
													<button class="ux-button contained primary">
														<span class="label">검색</span>
													</button>
												</div>
											</li>
										</ul>
									</fieldset>
								</form>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</article>
	</section>
	<!-- 로그인한 회원에게만 베스트 추천 캠핑장 노출 -->
	<section>
		<article>
			<div class="content recommand">
				<h4>베스트 추천 캠핑장</h4>
				<div class="swiper-container recommand-swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide recommand-slide s1">
							<a class="recommand" href="/pages/detail.html">
								<div class="item-image">
									<img class="img"
										src="/camp/resources/assets/images/camp/temp.jpg"
										alt="캠핑장대표사진">
								</div>
								<div class="item-info">
									<h4 class="info-title">1111가나다라마가나다캠핑장</h4>
									<p class="info-location">
										<span class="icon"></span><span class="label">강남, 서울</span>
									</p>
								</div>
								<div class="item-detail">
									<h5 class="detail-price">219,800원</h5>
								</div>
							</a>
						</div>
						<div class="swiper-slide recommand-slide s2">
							<a class="recommand" href="/pages/detail.html">
								<div class="item-image">
									<img class="img"
										src="${contextPath}/resources/assets/images/camp/temp.jpg"
										alt="캠핑장대표사진">
								</div>
								<div class="item-info">
									<h4 class="info-title">2222가나다라마가나다캠핑장 다라마가나다캠핑장</h4>
									<p class="info-location">
										<span class="icon"></span><span class="label">강남, 서울</span>
									</p>
								</div>
								<div class="item-detail">
									<h5 class="detail-price">219,800원</h5>
								</div>
							</a>
						</div>
						<div class="swiper-slide recommand-slide s3">
							<a class="recommand" href="/pages/detail.html">
								<div class="item-image">
									<img class="img"
										src="${contextPath}/resources/assets/images/camp/temp.jpg"
										alt="캠핑장대표사진">
								</div>
								<div class="item-info">
									<h4 class="info-title">3333가나다라마가나다캠핑장마가나다캠핑장</h4>
									<p class="info-location">
										<span class="icon"></span><span class="label">강남, 서울</span>
									</p>
								</div>
								<div class="item-detail">
									<h5 class="detail-price">219,800원</h5>
								</div>
							</a>
						</div>
						<div class="swiper-slide recommand-slide s4">
							<a class="recommand" href="/pages/detail.html">
								<div class="item-image">
									<img class="img"
										src="${contextPath}/resources/assets/images/camp/temp.jpg"
										alt="캠핑장대표사진">
								</div>
								<div class="item-info">
									<h4 class="info-title">4444가나다라마가나다캠핑장</h4>
									<p class="info-location">
										<span class="icon"></span><span class="label">강남, 서울</span>
									</p>
								</div>
								<div class="item-detail">
									<h5 class="detail-price">219,800원</h5>
								</div>
							</a>
						</div>
						<div class="swiper-slide recommand-slide s5">
							<a class="recommand" href="/pages/detail.html">
								<div class="item-image">
									<img class="img"
										src="${contextPath}/resources/assets/images/camp/temp.jpg"
										alt="캠핑장대표사진">
								</div>
								<div class="item-info">
									<h4 class="info-title">5555가나다라마가나다캠핑장</h4>
									<p class="info-location">
										<span class="icon"></span><span class="label">강남, 서울</span>
									</p>
								</div>
								<div class="item-detail">
									<h5 class="detail-price">219,800원</h5>
								</div>
							</a>
						</div>
						<div class="swiper-slide recommand-slide s6">
							<a class="recommand" href="/pages/detail.html">
								<div class="item-image">
									<img class="img"
										src="${contextPath}/resources/assets/images/camp/temp.jpg"
										alt="캠핑장대표사진">
								</div>
								<div class="item-info">
									<h4 class="info-title">6666가나다라마가나다캠핑장</h4>
									<p class="info-location">
										<span class="icon"></span><span class="label">강남, 서울</span>
									</p>
								</div>
								<div class="item-detail">
									<h5 class="detail-price">219,800원</h5>
								</div>
							</a>
						</div>
					</div>
					<!-- <div class="swiper-button-next"></div>
        					<div class="swiper-button-prev"></div> -->
				</div>
			</div>
		</article>
	</section>
</main>
