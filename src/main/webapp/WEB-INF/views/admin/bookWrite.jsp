<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 정보 등록</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row page-titles">
			<div class="col-md-5 col-8 align-self-center">
				<h3 class="text-themecolor">Book Write</h3>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="<%=cp%>/admin/main.do">Home</a></li>
					<li class="breadcrumb-item"><a
						href="<%=cp%>/admin/bookList.do">Book List</a></li>
					<li class="breadcrumb-item active">Book Write</li>
				</ol>
			</div>
		</div>

		<!-- ////////////////////////////////////////body 내용/////////////////////////////////// -->

		<div class="col-lg-12">
			<h2 class="detail_h2">도서 정보 입력</h2>
			<div class="card">
				<div class="card-block">
					<form:form commandName="view" method="post" enctype="multipart/form-data">
						<table border=1 class="table_detail">
							<c:if test="${view.book_num!=0&&view.book_num!=null}">
								<form:hidden path="book_num" value="${view.book_num}" />
								<tr>
									<th width=15%>도서 번호</th>
									<td width=35%>${view.book_num}</td>
									<th width=15%>등록일</th>
									<td width=35%>${view.book_date}</td>
								</tr>
							</c:if>
							<tr>
								<th width=15%>카테고리</th>
								<td width=35%><form:input path="book_category"
										value="${view.book_category}" /></td>
								<th width=15%>저자</th>
								<td width=35%><form:input path="book_auth"
										value="${view.book_auth}" /></td>
							</tr>
							<tr>
								<th width=15%>출판사</th>
								<td width=35%><form:input path="company_id"
										value="${view.company_id}" /></td>
								<th width=15%>출판일</th>
								<td width=35%><form:input path="book_publish_date"
										value="${view.book_publish_date}" /></td>
							</tr>
							<tr>
								<th width=15%>제목</th>
								<td width=85% colspan=3><form:input path="book_name"
										value="${view.book_name}" size="70" /></td>
							</tr>

							<c:choose>
								<c:when test="${view.book_image!=null}">
									<tr>
										<td><img src="<%=cp%>/upload/${view.book_image}" width="100" height="150" border="0" /> 
										<form:hidden path="book_image" value="${view.book_image}" />
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<form:hidden path="book_image" value=" " />
								</c:otherwise>
							</c:choose>
							<tr>
								<th width=15%>내용</th>
								<td colspan=3><form:textarea path="book_content"
										value="${view.book_content}" cols="50" rows="10" /></td>
							</tr>
							<tr>
								<td class="file" colspan=4><form:input type="file" path="book_image" label="이미지" /></td>
							</tr>
							<tr>
								<th width=15%>가격</th>
								<td width=35%><form:input path="book_price"
										value="${view.book_price}" /></td>
								<th width=15%>판매량</th>
								<td width=35%>${view.book_sell_count}</td>
							</tr>
							<tr>
								<th width=15%>기초 재고</th>
								<td width=35%><form:input path="book_base_count"
										value="${view.book_base_count}" /></td>
								<th width=15%>현재 재고</th>
								<td width=35%><form:input path="book_current_count"
										value="${view.book_current_count}" /></td>
							</tr>
							<tr>
								<th width=15%>활성화 여부</th>
								<td class="getyn" width=85% colspan=3><input type="radio"
									name="book_use_yn" id="book_use_yn" value="1"
									${view.book_use_yn == '1' ? 'checked="checked"' : '' }>사용
									<input type="radio" name="book_use_yn" id="book_use_yn"
									value="0"
									${view.book_use_yn == '0' ? 'checked="checked"' : '' }>비사용
								</td>
							</tr>
						</table>
						<br>
						<div class="detail_button">
							<input class="button" name="submit" type="submit" value="등록하기" />
							<input class="button" type=button value="목록보기"
								onclick="javascript:location.href='<%=cp%>/admin/bookList.do?currentPage=${currentPage}'">
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer"> © 2017 Material Pro Admin by
		wrappixel.com </footer>
</body>
</html>