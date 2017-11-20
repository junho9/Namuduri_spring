<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String cp = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=cp%>/css/adminPage.css" rel="stylesheet" type="text/css" />
<title>주문 상세보기</title>
</head>
<body>
<div class="detail">
<h2  class="detail_h2">주문 정보 상세보기</h2>
<form method="post" action="adminOrderModify.do">
<table border=1 cellspacing=0 cellpadding=0 class="table_detail">
	<c:url var="viewMemberURL" value="/admin/memberDetail.do">
		<c:param name="member_id" value="${view.member_id}"/>
	</c:url>
	<tr>
		<th width=15%>주문번호</th>
		<td width=35%>${view.order_trade_num}</td>
		<th width=15%>주문날짜</th>
		<td width=35%>${view.order_regdate}</td>
	</tr>
	<tr>
		<th width=15%>주문자</th>
		<td colspan=3><%-- ${view.member_name} --%>
		(<a href="${viewMemberURL}">${view.member_id}</a>)</td>
	</tr>
	<tr>
		<td align=center colspan=4><h2>주문 내역</h2></td>
	</tr>
	<tr>
		<th width=15>상품 번호</th>
		<th width=50>상품 이름</th>
		<th width=20>상품 가격</th>
		<th width=15>상품 수량</th>
	</tr>
	
<c:forEach var="list" items="${orderDetailList}" varStatus="stat">
	<c:url var="viewBookURL" value="/admin/bookDetail.do">
			<c:param name="book_num" value="${list.book_num}" />
	</c:url>
		
	<tr>
		<td><a href="${viewBookURL}">${list.book_num}</a></td>
		<td>${list.order_book_name}</td>
		<td>${list.order_book_price}</td>
		<td>${list.order_book_count}</td>
	</tr>
</c:forEach>

	<tr>
		<td colspan=4><b>총 금액 : <font size="red">${view.order_receive_moneysum}</font></b></td>
	</tr>
	<tr>
		<th width=15%>결제자</th>
		<td width=35%>${view.order_trade_payer}</td>
		<th width=15%>결제 방법</th>
		<td width=35%>${view.order_trade_status}</td>
	</tr>
	<tr>
		<th width=15%>입금 은행</th>
		<td width=35%>${view.order_bankname}</td>
		<th width=15%>입금 은행 계좌번호</th>
		<td width=35%>${view.order_bank_num}</td>
	</tr>
	<tr>
		<th width=15%>결제 상태</th>
		<td width=85% colspan=3>
	<c:choose>
		<c:when test="${view.payment_status =='PS01'}">
			<select name="payment_status">
				<option value="PS01" selected="selected">결제 대기중</option>
				<option value="PS02">결제 완료</option>
			</select>
		</c:when>
		<c:otherwise>
			<select name="payment_status">
				<option value="PS01">결제 대기중</option>
				<option value="PS02" selected="selected">결제 완료</option>
			</select>		
		</c:otherwise>
	</c:choose>
		</td>
	</tr>
	<tr>
		<th width=15%>배송번호</th>
		<td width=35%>"${view.order_trans_num}</td>
		<th width=15%>배송 상태</th>
		<td width=35%>
		<select name="order_trans_status">
		<c:choose>
			<c:when test="${view.order_trans_status == 'ST01'}">
				<option value="ST01" selected="selected">배송 준비중</option>
				<option value="ST02">배송 중</option>
				<option value="ST03">배송 완료</option>
			</c:when>
			<c:when test="${view.order_trans_status == 'ST02'}">
				<option value="ST01">배송 준비중</option>
				<option value="ST02" selected="selected">배송 중</option>
				<option value="ST03">배송 완료</option>
			</c:when>
			<c:otherwise>
				<option value="ST01">배송 준비중</option>
				<option value="ST02">배송 중</option>
				<option value="ST03" selected="selected">배송 완료</option>
			</c:otherwise>
			</c:choose>				
			</select>
		</td>
	</tr>
	<tr>
		<th width=15%>수취인</th>
		<td width=85% colspan=3>${view.order_receive_name}</td>
	</tr>
	<tr>
		<th width=15%>집 전화 번호</th>
		<td width=35%>${view.order_receive_phone}</td>
		<th width=15%>휴대전화 번호</th>
		<td width=35%>${view.order_receive_mobile}</td>
	</tr>
	<tr>
		<th width=15%>우편번호</th>
		<td width=85% colspan=3>${view.order_receive_zipcode}</td>
	</tr>
	<tr>
		<th width=15%>주소</th>
		<td width=85% colspan=3>${view.order_receive_addr1}&nbsp;${view.order_receive_addr2}</td>
	</tr>
	<tr>
		<th width=15%>요청 사항</th>
		<td width=85% colspan=3>${view.order_receive_memo}</td>
	</tr>
	<tr>
		<th width=15%>은행명</th>
		<td width=35%>${view.member_bankname}</td>
		<th width=15%>예금주</th>
		<td width=35%>${view.member_account_holder}</td>
	</tr>
	<tr>
		<th width=15%>환불계좌</th>
		<td width=85% colspan=3>${view.member_refund_account}</td>
	</tr>	
	<tr>
		<th width=15%>주문 내역 표시 여부</th>
		<td class="getyn" width=85% colspan=3>
			<input type="radio" name="order_use_yn" id="order_use_yn" value="1" 
				${view.order_use_yn == '1' ? 'checked="checked"' : '' }>사용 
			<input type="radio" name="order_use_yn" id="order_use_yn" value="0" 
				${view.order_use_yn == '0' ? 'checked="checked"' : '' }>비사용
		</td>
	</tr>
</table>
<br>
<div class="detail_button">
<input class="button" type=submit name=submit value="수정하기" onclick="javascript:location.href='<%=cp%>/admin/orderModify.do?order_trade_num=${view.order_trade_num}&currentPage=${currentPage}'">
&nbsp;&nbsp;
<input class="button" type=button value="목록보기" onclick="javascript:location.href='<%=cp%>/admin/orderList.do?currentPage=${currentPage}'">
</div>
</form>
</div>
</body>
</html>