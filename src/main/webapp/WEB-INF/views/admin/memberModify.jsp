<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
<div class="container-fluid">
	<div class="row page-titles">
		<div class="col-md-5 col-8 align-self-center">
			<h3 class="text-themecolor">Member Modify</h3>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="<%=cp%>/admin/main.do">Home</a></li>
				<li class="breadcrumb-item"><a href="<%=cp%>/admin/memberList.do">Member List</a></li>
				<li class="breadcrumb-item active">Member Modify</li>
			</ol>
		</div>
	</div>
	
	<!-- ////////////////////////////////////////body 내용/////////////////////////////////// -->
	<div class="detail">
		<h2 class="detail_h2">회원 정보 수정</h2>
		<form:form commandName="view" method="post">
		<%-- <form:errors element="div"/> --%>
			<table border=1 class="table_detail">
				<tr>
					<th width=15%>회원 번호</th>
					<td width=35%>${view.member_num}</td>
					<th width=15%>가입일</th>
					<td width=35%>${view.member_join_date}</td>
				</tr>
				<tr>
					<th>ID</th>
					<td>${view.member_id}</td>
					<th>비밀번호</th>
					<td class="short"><form:input path="member_pw" value="${view.member_pw}" />
						<%-- <form:errors path="member_pw" /> --%></td>
				</tr>
				<tr>
					<th>이름</th>
					<td class="short"><form:input path="member_name" value="${view.member_name}" />
						<%-- <form:errors path="member_name" /> --%></td>
					<th>주민번호</th>
					<td class="short"><form:input path="member_jumin1" value="${view.member_jumin1}" />
							<%-- <form:errors path="member_jumin1" /> --%>
						-<form:input path="member_jumin2" value="${view.member_jumin2}" />
							<%-- <form:errors path="member_jumin2" /> --%></td>
				</tr>
				<tr>
					<th>E-MAIL</th>
					<td class="middel"><form:input path="member_email" value="${view.member_email}" />
						<%-- <form:errors path="member_email" /> --%></td>
					<th>E-MAIL 수신여부</th>
					<td class="getyn">
						<input type="radio" name="member_email_get" id="member_email_get" value="1"
							${view.member_email_get == '1' ? 'checked="checked"' : '' }>수신
						<input type="radio" name="member_email_get" id="member_email_get" value="0"
							${view.member_email_get == '0' ? 'checked="checked"' : '' }>비수신
					</td>
				</tr>
				<tr>
					<th>집 전화 번호</th>
					<td class="middel"><form:input path="member_phone" value="${view.member_phone}" />
						<%-- <form:errors path="member_phone" /> --%></td>
					<th>휴대전화 번호</th>
					<td class="middel"><form:input path="member_mobile" value="${view.member_mobile}" />
						<%-- <form:errors path="member_mobile" /> --%></td>
				</tr>
				<tr>
					<th>우편번호</th>
					<td colspan=3><form:input path="member_zipcode" value="${view.member_zipcode}" /> 
						<%-- <form:errors path="member_zipcode" /> --%>
						<input class="searchbutton" type="button" value="검색"/></td> <!-- 우편번호 검색 기능 추가 -->
				</tr>
				<tr>
					<th>주소</th>
					<td class="long" colspan=3><form:input path="member_addr1" value="${view.member_addr1}" />
						<%-- <form:errors path="member_addr1" /> --%>
						&nbsp;<form:input path="member_addr2" value="${view.member_addr2}" />
						<%-- <form:errors path="member_addr2" /> --%></td>
				</tr>
			</table>
			<br>
			<h2>환불 정보 수정</h2>
			<table border=1 class="table_detail">
				<tr>
					<th>은행명</th>
					<td><form:input path="member_bankname" value="${view.member_bankname}"/></td>
					<th>예금주</th>
					<td><form:input path="member_account_holder" value="${view.member_account_holder}" /></td>
				</tr>
				<tr>
					<th>환불계좌</th>
					<td class="long" colspan=3><form:input path="member_refund_account"
						value="${view.member_refund_account}"/></td>
				</tr>
			</table>
			<br>
			<div class="detail_button">
				<input class="button" type=button value="목록보기"
					onclick="javascript:location.href='<%=cp%>/admin/memberList.do?currentPage=${currentPage}'">
				<input class="button" type="submit" value="수정하기" />
			</div>
		</form:form>
	</div>
	
</div>
<footer class="footer"> © 2017 Material Pro Admin by wrappixel.com </footer>
</body>
</html>