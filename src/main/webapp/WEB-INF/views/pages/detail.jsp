<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<main class="ui-detail">
	<section>
		<article>

			<c:if test="${empty campingSite}">
				<div>데이터가 없습니다.</div>
				<!-- 데이터가 없을 경우 표시 -->
			</c:if>
			<c:if test="${not empty campingSite}">
				<div class="content">
					<div class="content-title">
						<div class="item-info">
							<h4 class="info-title">${campingSite.name}</h4>
							<p class="info-location">
								<span class="icon"></span><span class="label">${campingSite.loc}</span>
							</p>
							<p class="info-shortdesc">
								<span class="icon"></span><span class="label">${campingSite.shortDesc}</span>
							</p>
						</div>
						<div class="item-detail">
							<h5 class="detail-price">${campingSite.price}</h5>
							<div class="ux-button-bar">
								<!-- <button class="ux-button icon-menu wish" role="button">
									<i class="icon fa-regular fa-heart"></i>
									<span class="label">찜하기</span>
								</button> -->
								<a href="${campingSite.reservUrl}" class="ux-button outlined reserv" target="_blank"><span class="label">예약하기</span></a>
							</div>
						</div>
					</div>
					<div class="modi-photo-book">
						<img src="${contextPath}${campingSite.repImage}" alt="캠핑장대표이미지">

					</div>
					<!-- <div class="ui-photo-book">
						<ul>
							<li><img src="../assets/images/camp/temp.jpg" alt=""></li>
							<li><img src="../assets/images/camp/temp.jpg" alt=""></li>
							<li><img src="../assets/images/camp/temp.jpg" alt=""></li>
							<li><img src="../assets/images/camp/temp.jpg" alt=""></li>
							<li><img src="../assets/images/camp/temp.jpg" alt=""></li>
						</ul>
					</div> -->
				</div>
				<div class="ux-divider"></div>
				<div class="content">
					<h4 class="content-title">소개</h4>
					<p class="text-type">${campingSite.type}</p>
					<p class="text-intro">${campingSite.intro}</p>
				</div>
				<div class="ux-divider"></div>
				<div class="content">
					<h4 class="content-title">고객상담 <span class="tel">${campingSite.custPhone}</span></h4>
				</div>
				<div class="ux-divider"></div>
				<div class="content">
					<h4 class="content-title">편의시설</h4>
					<ul class="text-list">
						<li>실외 수영장</li>
						<li>해변</li>
						<li>스파 및 웰니스 센터</li>
						<li>피트니스 센터</li>
						<li>레스토랑</li>
						<li>바/라운지</li>
						<li>룸서비스</li>
						<li>무료 와이파이</li>
						<li>차/커피메이커</li>
						<li>커피머신</li>
					</ul>
				</div>
				<div class="ux-divider"></div>
				<div class="content">
					<h4 class="content-title">주요 공지사항</h4>
					<ul class="text-list">
						<li><strong>채크인 : 15:00</strong></li>
						<li><strong>체크아웃 : 11:00</strong></li>
						<li>
							<strong>취소 및 환불:</strong>
							<ul>
								<li>- 예약일 3일 전 취소 시 100% 환불</li>
								<li>- 예약일 2일 전 취소 시 50% 차감 후 환불</li>
								<li>- 예약일 1일 전 취소 시 90% 차감 후 환불</li>
								<li><strong>- 예약당일 취소 불가</strong></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="ux-divider"></div>
				<div class="content map">
					<h4 class="content-title">오시는 길</h4>
					<p class="text-address">경기 파주시 파평면 파평산로363번길 32-9</p>
				<!-- <div class="map-wrap" >
						<div id="map"></div>
					</div> -->
				</div>
			</c:if>
		</article>
	</section>
</main>
