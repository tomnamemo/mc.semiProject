<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>

<main>
	<section>
		<article>
			<table border="1" align="center" width="80%">
				<tr align="center" bgcolor="lightgreen">
					<td><b>아이디</b></td>
					<td><b>비밀번호</b></td>
					<td><b>이름</b></td>
					<td><b>이메일</b></td>
					<td><b>가입일</b></td>
					<td><b>삭제</b></td>
				</tr>

				<c:forEach var="member" items="${membersList}">
					<tr align="center">
						<td>${member.id}</td>
						<td>${member.pwd}</td>
						<td>${member.name}</td>
						<td>${member.email}</td>
						<td>${member.joinDate}</td>
						<td><a
							href="${contextPath}/member/removeMember.do?id=${member.id }">삭제하기</a></td>
					</tr>
				</c:forEach>
			</table>
<%-- 			<a href="${contextPath}/member/memberForm.do">회원가입</a> --%>
		</article>
	</section>
</main>



