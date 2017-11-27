<%
String cp = request.getContextPath();
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Shop || Witter Multipage Responsive Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- Add your site or application content here -->
	
	<!-- Shop Area Start -->
	<div class="shopping-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="shop-widget">
						<div class="shop-widget-top">
							<aside class="widget widget-categories">
								<h2 class="sidebar-title text-center">CATEGORY</h2>
								<ul class="sidebar-menu" style="text-align: left;">
									<li><a href="<%=cp%>/books/booksList.do?book_category=단편소설"> <i class="fa fa-angle-double-right"></i> 단편소설 <span></span>
									</a></li>
									<li><a href="<%=cp%>/books/booksList.do?book_category=장편소설"> <i class="fa fa-angle-double-right"></i> 장편소설 <span></span>
									</a></li>
									<li><a href="<%=cp%>/books/booksList.do?book_category=자기계발"> <i class="fa fa-angle-double-right"></i> 자기계발 <span></span>
									</a></li>
									<li><a href="<%=cp%>/books/booksList.do?book_category=시/에세이"> <i class="fa fa-angle-double-right"></i> 시/에세이 <span></span>
									</a></li>
									<li><a href="<%=cp%>/books/booksList.do?book_category=어린이(초등)"> <i class="fa fa-angle-double-right"></i> 어린이(초등) <span></span>
									</a></li>
									<li><a href="<%=cp%>/books/booksList.do?book_category=중/고등참고서"> <i class="fa fa-angle-double-right"></i> 중/고등 참고서 <span></span>
									</a></li>
									<li><a href="<%=cp%>/books/booksList.do?book_category=취업/참고서"> <i class="fa fa-angle-double-right"></i> 취업/참고서 <span></span>
									</a></li>
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
												<input type="submit" value="Filter" /> <input type="reset" value="CLEAR" />
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
									<li><a href="#">e-book</a></li>
									<li><a href="#">writer</a></li>
									<li><a href="#">book’s</a></li>
									<li><a href="#">eassy</a></li>
									<li><a href="#">nice</a></li>
									<li><a href="#">author</a></li>
								</ul>
							</aside>
							<aside class="widget widget-seller">
								<h2 class="sidebar-title">TOP SELLERS</h2>
								<div class="single-seller">
									<div class="seller-img">
										<img src="${pageContext.request.contextPath}/bootstrap/img/shop/1.jpg" alt="" />
									</div>
									<div class="seller-details">
										<a href="shop.html"><h5>Cold mountain</h5></a>
										<h5>$ 50.00</h5>
										<ul>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
										</ul>
									</div>
								</div>
								<div class="single-seller">
									<div class="seller-img">
										<img src="${pageContext.request.contextPath}/bootstrap/img/shop/2.jpg" alt="" />
									</div>
									<div class="seller-details">
										<a href=""><h5>The historian</h5></a>
										<h5>$ 50.00</h5>
										<ul>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
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
									<li class="active" id="left"><a data-toggle="pill" href="#home"><i class="fa fa-th"></i><span>Grid</span></a></li>
									<li><a data-toggle="pill" href="#menu1"><i class="fa fa-th-list"></i><span>List</span></a></li>
								</ul>
							</div>
							<div class="shop-tab-pill pull-right">
								<ul>
									<li class="product-size-deatils">
										<div class="show-label">
											<label>Show : </label> <select>
												<option value="10" selected="selected">10</option>
												<option value="09">09</option>
												<option value="08">08</option>
												<option value="07">07</option>
												<option value="06">06</option>
											</select>
										</div>
									</li>
									<li class="product-size-deatils">
										<div class="show-label">
											<label><i class="fa fa-sort-amount-asc"></i>Sort by : </label> <select>
												<option value="position" selected="selected">Position</option>
												<option value="Name">Name</option>
												<option value="Price">Price</option>
											</select>
										</div>
									</li>
									 ${pagingHtml}
									<li class="shop-pagination"><a href="booksList.do?currentPage=${currentPage+1 }"><i class="fa fa-caret-right"></i></a></li>
								</ul>
							</div>
						</div>
						<!-- GRID 형식 -->
						<div class="tab-content">
							<div class="row tab-pane fade in active" id="home">
								<div class="shop-single-product-area">
									
									<c:forEach var="list" items="${booksList}" varStatus="stat">
									<div class="col-md-4 col-sm-6">
										<div class="single-banner">
											<div class="product-wrapper">
												<a href="#" class="single-banner-image-wrapper"> <img width="200" height="180" alt="" src="${pageContext.request.contextPath}/upload/${list.book_image}">
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
														<a href="#" title="Add to Cart"> <i class="fa fa-shopping-cart"></i>
														</a> <a href="#" title="Add to Wishlist"> <i class="fa fa-heart-o"></i>
														</a> <a href="#" title="Quick view" data-toggle="modal" data-target="#productModal"> <i class="fa fa-compress"></i>
														</a>
													</div>
												</div>
											</div>
											<div class="banner-bottom text-center">
												<a href="#"><fmt:formatNumber value="${list.book_price}" pattern="###,###,###" />원</a>
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
									<div class="single-shop-product">

										<div class="col-xs-12 col-sm-5 col-md-4">
											<div class="left-item">
												<a href="single-product.html" title="East of eden"> <img width="100" height="80" src="${pageContext.request.contextPath}/upload/${list.book_image}" alt="">
												</a>
											</div>
										</div>
										<div class="col-xs-12 col-sm-7 col-md-8">
											<div class="deal-product-content">
												<h4>
													<a href="single-product.html" title="East of eden">${list.book_name}</a>
												</h4>
												<div class="product-price">
													<span class="new-price">${list.book_price}</span> <span class="old-price"></span>
												</div>
												<div class="list-rating-icon">
													<i class="fa fa-star icolor"></i> 
													<i class="fa fa-star icolor"></i> 
													<i class="fa fa-star icolor"></i> 
													<i class="fa fa-star"></i> 
													<i class="fa fa-star"></i>
												</div>
												<p>${list.book_auth}</p>
												<p>${list.company_id}</p>
												<p>${list.book_publish_date}</p>
												<div class="availability">
													<span><a href="cart.html">BUY NOW</a></span><br/>
													<span><a href="cart.html">ADD TO CART</a></span>
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
	<!-- Shop Area End -->
</body>
</html>