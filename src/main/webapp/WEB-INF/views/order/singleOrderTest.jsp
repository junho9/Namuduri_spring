<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Checkout || Witter Multipage Responsive Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">

var name = "${memberModel.member_name}";
var zipcode ="${memberModel.member_zipcode}";
var addr1 = "${memberModel.member_addr1}";
var addr2 = "${memberModel.member_addr2}";
var phone = "${memberModel.member_phone}";
var mobile = "${memberModel.member_mobile}";

	function checkIt() {
	var orderform = document.getElementById("orderform");
		if (!orderform.order_receive_name.value) {
			alert("수취인 이름을 입력하세요");
			orderform.order_receive_name.focus();
			return false;
		} else if (!orderform.order_receive_phone.value) {
			alert("수취인 전화번호를 입력하세요");
			orderform.order_receive_phone.focus();
			return false;
		} else if (!orderform.order_receive_zipcode.value) {
			alert("수취인 우편번호를 입력하세요");
			orderform.order_receive_zipcode.focus();
			return false;
		} else if (!orderform.order_receive_addr1.value) {
			alert("수취인 주소를 입력하세요");
			orderform.order_receive_addr1.focus();
			return false;
		} else if (!orderform.order_receive_addr2.value) {
			alert("수취인 상세주소를 입력하세요");
			orderform.order_receive_addr2.focus();
			return false;
		} else {
			orderform.action = "<%=cp%>/order/singleOrder.do";
			orderform.submit();
		}
	}
	function senddata() {
		var orderform = document.getElementById("orderform");
		
		orderform.order_receive_name.value = name;
		orderform.order_receive_zipcode.value = zipcode;
		orderform.order_receive_addr1.value = addr1;
		orderform.order_receive_addr2.value = addr2;
		orderform.order_receive_phone.value = phone;
		orderform.order_receive_mobile.value = mobile;
	}

	function deldata() {
		var orderform = document.getElementById("orderform");
		
		orderform.order_receive_name.value = "";
		orderform.order_receive_zipcode.value = "";
		orderform.order_receive_addr1.value = "";
		orderform.order_receive_addr2.value = "";
		orderform.order_receive_phone.value = "";
		orderform.order_receive_mobile.value = "";
	}

	function orderzipCheck() {
		var url = '<%=cp%>/order/zipCheck.do';
		window.open(url, "post", "toolbar=no,width=605,height=247,directoris=no,status=yes,scrollbars=yes,menubar=no");
  }
</script>
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- Breadcrumbs Area Start -->
	<div class="breadcrumbs-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumbs">
						<h2>Checkout List</h2>
						<ul class="breadcrumbs-list">
							<li>
								<a title="Return to Home" href="index.html">Home</a>
							</li>
							<li>Checkout List</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumbs Area Start -->
	<!-- Check Out Area Start -->
	<div class="check-out-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title">
									<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
										<span>1</span>
										Checkout Method
									</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-6 col-sm-6">
											<div class="checkout-collapse-inner">
												<h2 class="collapse-title">CHECKOUT AS A GUEST OR REGISTER</h2>
												<h4 class="collapse-sub-title">Register with us for future convenience:</h4>
												<form name="orderform" id="orderform" method="post">
													<input type="hidden" name="order_receive_moneysum" value="${sumMoney}" />
													<input type="hidden" name="order_book_count" value="${order_book_count}" />
													<input type="hidden" name="book_num" value="${book.book_num}" />
													<input type="hidden" name="order_book_name" value="${book.book_name}" />
													<input type="hidden" name="order_book_price" value="${book.book_price}" />
													<input type="hidden" name="order_book_count" value="${order_book_count}" />
													<input type="hidden" name="basket_num" value="${basket_num}" />
													<div class="check-register">
														<input type="radio" checked="checked" onclick="deldata();" />
														<label>직접입력</label>
													</div>
													<div class="check-register">
														<input type="radio" onclick="senddata();" />
														<label>주문자 정보와 동일</label>
													</div>
												</form>
												<p>Register and save time!</p>
												<p>Register with us for future convenience:</p>
												<p>Fast and easy check out</p>
												<p>Easy access to your order history and status</p>
												<button class="btn btn-default btn-checkout">CONTINUE</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										<span>2</span>
										Billing Information
									</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12">
											<div class="shop-select">
												<label>
													Country
													<span class="required">*</span>
												</label>
												<select>
													<option value="volvo">SOUTH KOREA</option>
													<option value="saab">Algeria</option>
													<option value="mercedes">Afghanistan</option>
													<option value="audi">Ghana</option>
													<option value="audi2">Albania</option>
													<option value="audi3">Bahrain</option>
													<option value="audi4">Colombia</option>
													<option value="audi5">Dominican Republic</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<p class="form-row">
												<input type="text" name="order_receive_name" value="" placeholder="First Name *">
											</p>
										</div>
										
										<div class="col-md-12">
											<p class="form-row">
												<input type="text" name="order_receive_addr1" value="" placeholder="Street address">
											</p>
										</div>
										<div class="col-md-12">
											<p class="form-row">
												<input type="text" name="order_receive_addr2" value="" placeholder="Town / City">
											</p>
										</div>
										
										<div class="col-md-6">
											<p class="form-row">
												<input type="text" name="order_receive_zipcode" value="" placeholder="Postcode / Zip">
											</p>
										</div>
										<div class="col-md-6">
											<p class="form-row">
												<input type="text" name="order_email" value="${memberModel.member_email }" placeholder="Email Address *">
											</p>
										</div>
										<div class="col-md-6">
											<p class="form-row">
												<input type="text" id="order_receive_phone" name="order_receive_phone" placeholder="Phone *">
											</p>
										</div>
										<div class="col-md-12">
											<label class="checbox-info">
												<input type="checkbox" id="cbox">
												Create an account?
											</label>
											<div id="cbox_info">
												<p>Create an account by entering the information below. If you are a returning customer please login at the top of the page.</p>
												<p class="form-row form-row-phone">
													<label>
														Phone
														<span class="required">*</span>
													</label>
													<input type="text" id="order_receive_mobile" name="order_receive_mobile" value="" placeholder="Phone">
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingThree">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
										<span>3</span>
										Shopping Method
									</a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
								<div class="panel-body">
									<div class="different-address">
										<div class="ship-different-title">
											<h3>
												<label>Ship to a different address?</label>
												<input type="checkbox" id="ship-box">
											</h3>
										</div>
										<div id="ship-box-info" class="row">
											<div class="col-md-12">
												<div class="shop-select">
													<label>
														Country
														<span class="required">*</span>
													</label>
													<select>
														<option value="volvo">Bangladesh</option>
														<option value="saab">Algeria</option>
														<option value="mercedes">Afghanistan</option>
														<option value="audi">Ghana</option>
														<option value="audi2">Albania</option>
														<option value="audi3">Bahrain</option>
														<option value="audi4">Colombia</option>
														<option value="audi5">Dominican Republic</option>
													</select>
												</div>
											</div>
											<div class="col-md-6">
												<p class="form-row">
													<input type="text" placeholder="First Name *">
												</p>
											</div>
											<div class="col-md-6">
												<p class="form-row">
													<input type="text" placeholder="Last Nane *">
												</p>
											</div>
											<div class="col-md-12">
												<p class="form-row">
													<input type="text" placeholder="Company Name">
												</p>
											</div>
											<div class="col-md-12">
												<p class="form-row">
													<input type="text" placeholder="Street address *">
												</p>
											</div>
											<div class="col-md-12">
												<p class="form-row">
													<input type="text" placeholder="Town / City *">
												</p>
											</div>
											<div class="col-md-6">
												<p class="form-row">
													<input type="text" placeholder="State / County *">
												</p>
											</div>
											<div class="col-md-6">
												<p class="form-row">
													<input type="text" placeholder="Postcode / Zip *">
												</p>
											</div>
											<div class="col-md-6">
												<p class="form-row">
													<input type="text" placeholder="Email Address *">
												</p>
											</div>
											<div class="col-md-6">
												<p class="form-row">
													<input type="text" placeholder="Phone *">
												</p>
											</div>
										</div>
										<div class="order-notes">
											<label>Order Notes</label>
											<textarea placeholder="Notes about your order, e.g. special notes for delivery." rows="10" cols="30" id="checkout-mess" name="order_receive_memo"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingFour">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
										<span>4</span>
										Payment Information
									</a>
								</h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
								<div class="panel-body no-padding">
									<div class="payment-met">
										<form action="#" id="payment-form">
											<ul class="form-list">
												<li class="control">
													<input type="radio" class="radio" title="Check / Money order" name="payment[method]" id="p_method_checkmo">
													<label for="p_method_checkmo">Check / Money order </label>
												</li>
												<li class="control">
													<input type="radio" class="radio" title="Credit Card (saved)" name="payment[method]" id="p_method_ccsave">
													<label for="p_method_ccsave">Credit Card (saved) </label>
												</li>
											</ul>
										</form>
										<div class="buttons-set">
											<button class="btn btn-default">CONTINUE</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingFive">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
										<span>5</span>
										Order Review
									</a>
								</h4>
							</div>
							<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
								<div class="panel-body no-padding">
									<div class="order-review" id="checkout-review">
										<div class="table-responsive" id="checkout-review-table-wrapper">
											<table class="data-table" id="checkout-review-table">
												<thead>
													<tr>
														<th colspan="1">Image</th>
														<th rowspan="1">Product Name</th>
														<th colspan="1">Price</th>
														<th rowspan="1">Qty</th>
														<th colspan="1">Subtotal</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>
															<h3 class ="product-name">
																<img src="<%=cp%>/upload/${book.book_image}" width="40" alt="${book.book_name}" title="${book.book_name}" />
															</h3>
														</td>
														<td>
															<h3 class="product-name"> ${book.book_name}</h3>
														</td>
														<td>
															<span class="cart-price">
																<span class="check-price"><fmt:formatNumber value="${book.book_price}" pattern="###,###,###" />
													원</span>
															</span>
														</td>
														<td>${order_book_count}</td>
														<!-- sub total starts here -->
														<td>
															<span class="cart-price">
																<span class="check-price"><fmt:formatNumber value="${bookMoney}" pattern="###,###,###" />
														원</span>
															</span>
														</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<td colspan="3">Subtotal</td>
														<td>
															<span class="check-price"><fmt:formatNumber value="${bookMoney}" pattern="###,###,###" />
														원</span>
														</td>
													</tr>
													<tr>
														<td colspan="3">Fee</td>
														<td>
															<span class="check-price">$<fmt:formatNumber value="${deliveryFee}" pattern="#,###" />원</span>
														</td>
													</tr>
													<tr>
														<td colspan="3">
															<strong>Grand Total</strong>
														</td>
														<td>
															<strong>
																<span class="check-price"><fmt:formatNumber value="${sumMoney}" pattern="###,###,###" />원</span>
															</strong>
														</td>
													</tr>
												</tfoot>
											</table>
										</div>
										<div id="checkout-review-submit">
											<div class="cart-btn-3" id="review-buttons-container">
												<p class="left">
													Forgot an Item?
													<a href="#">Edit Your Cart</a>
												</p>
												<button type="submit" title="Place Order" class="btn btn-default">
													<span>Place Order</span>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-offset-1 col-md-3">
					<div class="checkout-widget">
						<h2 class="widget-title">YOUR CHECKOUT PROGRESS</h2>
						<ul>
							<li>
								<a href="#">
									<i class="fa fa-minus"></i>
									Billing Address
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-minus"></i>
									Shipping Address
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-minus"></i>
									Shipping Method
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-minus"></i>
									Payment Method
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Check Out Area End -->
	<!-- Our Team Area Start -->
	<div class="our-team-area">
		<h2 class="section-title">OUR WRITER</h2>
		<div class="container">
			<div class="row">
				<div class="team-list indicator-style">
					<div class="col-md-3">
						<div class="single-team-member">
							<a href="#">
								<img src="${pageContext.request.contextPath}/bootstrap/img/about/team/1.jpg" alt="">
							</a>
							<div class="member-info">
								<a href="#">rokan tech</a>
								<p>WRITER</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-team-member">
							<a href="#">
								<img src="${pageContext.request.contextPath}/bootstrap/img/about/team/2.jpg" alt="">
							</a>
							<div class="member-info">
								<a href="#">mirinda</a>
								<p>AUTHOR</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-team-member">
							<a href="#">
								<img src="${pageContext.request.contextPath}/bootstrap/img/about/team/3.jpg" alt="">
							</a>
							<div class="member-info">
								<a href="#">jone doe</a>
								<p>WRITER</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-team-member">
							<a href="#">
								<img src="${pageContext.request.contextPath}/bootstrap/img/about/team/4.jpg" alt="">
							</a>
							<div class="member-info">
								<a href="#">nick kon</a>
								<p>WRITER</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-team-member">
							<a href="#">
								<img src="${pageContext.request.contextPath}/bootstrap/img/about/team/2.jpg" alt="">
							</a>
							<div class="member-info">
								<a href="#">mirinda</a>
								<p>AUTHOR</p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-team-member">
							<a href="#">
								<img src="${pageContext.request.contextPath}/bootstrap/img/about/team/1.jpg" alt="">
							</a>
							<div class="member-info">
								<a href="#">rokan tech</a>
								<p>WRITER</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Our Team Area End -->
</body>
</html>