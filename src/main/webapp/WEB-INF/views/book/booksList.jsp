
<%
	String cp = request.getContextPath();
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Shop || Witter Multipage Responsive Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Poppins:400,700,600,500,300' rel='stylesheet' type='text/css'>
<style type="text/css">
img.resize {
	width: 220px;
	height: 280px;
}
</style>
</head>
<body>
	<h2 style="text-align: -webkit-center; padding-top: 30px;">SHOPPING BOOK PAGE</h2>
	<ul class="breadcrumbs-list" style="text-align: -webkit-center;">
		<li>
			<a title="Return to Home" href="<%=cp%>/main.do">Home</a>
		</li>
		<li>
			<a title="Go to Basket" href="<%=cp%>/basket/basketList.do">Basket</a>
		</li>
	</ul>
	<!-- Shop Area Start -->
	<form name="frmList">
		<div class="shopping-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-3 col-xs-12">
						<div class="shop-widget">
							<div class="shop-widget-top">
								<aside class="widget widget-categories">
									<h2 class="sidebar-title text-center">CATEGORY</h2>
									<ul class="sidebar-menu" style="text-align: left;">
										<li>
											<a href="<%=cp%>/books/booksList.do?book_category=단편소설">
												<i class="fa fa-angle-double-right"></i>
												단편소설
												<span></span>
											</a>
										</li>
										<li>
											<a href="<%=cp%>/books/booksList.do?book_category=장편소설">
												<i class="fa fa-angle-double-right"></i>
												장편소설
												<span></span>
											</a>
										</li>
										<li>
											<a href="<%=cp%>/books/booksList.do?book_category=자기계발">
												<i class="fa fa-angle-double-right"></i>
												자기계발
												<span></span>
											</a>
										</li>
										<li>
											<a href="<%=cp%>/books/booksList.do?book_category=시/에세이">
												<i class="fa fa-angle-double-right"></i>
												시/에세이
												<span></span>
											</a>
										</li>
										<li>
											<a href="<%=cp%>/books/booksList.do?book_category=어린이(초등)">
												<i class="fa fa-angle-double-right"></i>
												어린이(초등)
												<span></span>
											</a>
										</li>
										<li>
											<a href="<%=cp%>/books/booksList.do?book_category=중/고등참고서">
												<i class="fa fa-angle-double-right"></i>
												중/고등 참고서
												<span></span>
											</a>
										</li>
										<li>
											<a href="<%=cp%>/books/booksList.do?book_category=취업/참고서">
												<i class="fa fa-angle-double-right"></i>
												취업/참고서
												<span></span>
											</a>
										</li>
									</ul>
								</aside>
								<aside class="widget shop-filter">
									<h2 class="sidebar-title text-center">PRICE SLIDER</h2>
									<div class="info-widget">
										<div class="price-filter">
											<div id="slider-range"></div>
											<div class="price-slider-amount">
												<input type="text" id="amount" name="price" placeholder="Add Your Price" />
												<div class="widget-buttom">
													<input type="submit" value="Filter" />
													<input type="reset" value="CLEAR" />
												</div>
											</div>
										</div>
									</div>
								</aside>
							</div>
							<div class="shop-widget-bottom">
								<aside class="widget widget-tag">
									<h2 class="sidebar-title">POPULAR TAG</h2>
									<ul class="tag-list">
										<li>
											<a href="#">e-book</a>
										</li>
										<li>
											<a href="#">writer</a>
										</li>
										<li>
											<a href="#">book’s</a>
										</li>
										<li>
											<a href="#">eassy</a>
										</li>
										<li>
											<a href="#">nice</a>
										</li>
										<li>
											<a href="#">author</a>
										</li>
									</ul>
								</aside>
								<aside class="widget widget-seller">
									<h2 class="sidebar-title">TOP SELLERS</h2>
									<div class="single-seller">
										<div class="seller-img">
											<img src="${pageContext.request.contextPath}/bootstrap/img/shop/1.jpg" alt="" />
										</div>
										<div class="seller-details">
											<a href="shop.html">
												<h5>Cold mountain</h5>
											</a>
											<h5>$ 50.00</h5>
											<ul>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
											</ul>
										</div>
									</div>
									<div class="single-seller">
										<div class="seller-img">
											<img src="${pageContext.request.contextPath}/bootstrap/img/shop/2.jpg" alt="" />
										</div>
										<div class="seller-details">
											<a href="">
												<h5>The historian</h5>
											</a>
											<h5>$ 50.00</h5>
											<ul>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
												<li>
													<i class="fa fa-star icolor"></i>
												</li>
											</ul>
										</div>
									</div>
								</aside>
							</div>
						</div>
					</div>
					<div class="col-md-9 col-sm-9 col-xs-12">
						<div class="shop-tab-area">
							<div class="shop-tab-list">
								<div class="shop-tab-pill pull-left">
									<ul>
										<li class="active" id="left">
											<a data-toggle="pill" href="#home">
												<i class="fa fa-th"></i>
												<span>Grid</span>
											</a>
										</li>
										<li>
											<a data-toggle="pill" href="#menu1">
												<i class="fa fa-th-list"></i>
												<span>List</span>
											</a>
										</li>
									</ul>
								</div>
								<div class="shop-tab-pill pull-right">
									<ul>
										<li class="product-size-deatils">
											<div class="show-label">
												<label>
													<i class="fa fa-sort-amount-asc"></i>
													Sort by :
												</label>
												<select>
													<option value="date" selected="selected" onclick="<%=cp%>/books/booksList.do?option=date">Date</option>
													<option value="name">Name</option>
													<option value="price">Price</option>
												</select>
											</div>
										</li>
										${pagingHtml}
										<li class="shop-pagination">
											<a href="booksList.do?currentPage=${currentPage+1 }">
												<i class="fa fa-caret-right"></i>
											</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="tab-content">
								<!-- GRID 형식 -->
								<div class="row tab-pane fade in active" id="home">
									<div class="shop-single-product-area">
										<c:forEach var="list" items="${booksList}" varStatus="stat">
											<c:url var="viewURL" value="/books/bookDetail.do">
												<c:param name="book_num" value="${list.book_num}" />
											</c:url>
											<div class="col-md-4 col-sm-6">
												<div class="single-banner">
													<div class="product-wrapper">
														<a href="${viewURL}" class="single-banner-image-wrapper">
															<img class="resize" alt="" src="${pageContext.request.contextPath}/upload/${list.book_image}">
															<div class="rating-icon">
																<i class="fa fa-star icolor"></i>
																<i class="fa fa-star icolor"></i>
																<i class="fa fa-star icolor"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
															</div>
														</a>
														<div class="product-description">
															<div class="functional-buttons">
																<a href="javascript:isBasket(${list.book_num})">
																	<i class="fa fa-shopping-cart"></i>
																</a>
																<a href="javascript:isWish(${list.book_num})" title="Add to Wishlist">
																	<i class="fa fa-heart-o"></i>
																</a>
																<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																	<i class="fa fa-compress"></i>
																</a>
															</div>
														</div>
													</div>
													<div class="banner-bottom text-center">
														<a href="#">
															<fmt:formatNumber value="${list.book_price}" pattern="###,###,###" />
															원
														</a>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<!--LIST 형식  -->
								<div id="menu1" class="tab-pane fade">
									<div class="row">
										<c:forEach var="list" items="${booksList}" varStatus="stat">
											<c:url var="viewURL" value="/books/bookDetail.do">
												<c:param name="book_num" value="${list.book_num}" />
											</c:url>
											<div class="single-shop-product">
												<div class="col-xs-12 col-sm-5 col-md-4">
													<div class="left-item">
														<a href="${viewURL}" title="East of eden">
															<img class="resize" src="${pageContext.request.contextPath}/upload/${list.book_image}" alt="">
														</a>
													</div>
												</div>
												<div class="col-xs-12 col-sm-7 col-md-8">
													<div class="deal-product-content">
														<h4>
															<a href="${viewURL}">${list.book_name}</a>
														</h4>
														<div class="product-price">
															<span class="new-price">
																<fmt:formatNumber value="${list.book_price}" pattern="###,###,###" />
																원
															</span>
															<span class="old-price"></span>
														</div>
														<div class="list-rating-icon">
															<i class="fa fa-star icolor"></i>
															<i class="fa fa-star icolor"></i>
															<i class="fa fa-star icolor"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<p>${list.book_auth}</p>
														<p>${list.company_id}[${list.book_publish_date}]</p>
														<div class="shopingcart-bottom-area wishlist-bottom-area pull-right">
															<span>
																<a href="javascript:isBuy(${list.book_num});" class="right-shoping-cart">BUY NOW</a>
															</span>
															<span>
																<a href="javascript:isBasket(${list.book_num});" class="right-shoping-cart">ADD TO CART</a>
															</span>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- Shop Area End -->
	<script type="text/javascript">	
function isBasket(book_num) {
	 var isbuy=confirm("장바구니에 담으시겠습니까?");
	 if(isbuy==true) {
	   location.href='<%=cp%>/basket/basketInsert.do?basket_book_num='+book_num+'&amount='+1;
	 } else {
	  return false;
	 }
	}
	
function isWish(book_num) {
	 var comment=prompt('Please Enter Your Comment');
	 if (comment == null) return false;
		 location.href='<%=cp%>/wish/wishInsert.do?wish_book_num='+book_num+'&wish_book_count='+1+'&wish_comment='+comment;
}
	
function isBuy(book_num) {
	var isbuy=confirm("구매 하시겠습니까?");
	if(isbuy==true) {
		 location.href='<%=cp%>/order/singleOrder.do?book_num='+book_num+'&order_book_count='+1;
	} else {
		return false;
	}
}
function upScroll() {
	document.documentElement.scrollTop = 0;
}
function downScroll() {
	document.documentElement.scrollTop = document.body.scrollHeight;
}
</script>
</body>
</html>