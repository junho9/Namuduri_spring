<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Checkout || Witter Multipage Responsive Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/bootstrap/img/favicon.ico">
        <!-- Place favicon.ico in the root directory -->
        <!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Poppins:400,700,600,500,300' rel='stylesheet' type='text/css'>

		<!-- all css here -->
		<!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
		<!-- animate css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/animate.css">
		<!-- jquery-ui.min css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/jquery-ui.min.css">
		<!-- meanmenu css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/meanmenu.min.css">
		<!-- Font-Awesome css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/font-awesome.min.css">
		<!-- pe-icon-7-stroke css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/pe-icon-7-stroke.css">
		<!-- Flaticon css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/flaticon.css">
		<!-- venobox css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/venobox/venobox.css" type="text/css" media="screen" />
		<!-- nivo slider css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/lib/css/nivo-slider.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/lib/css/preview.css" type="text/css" media="screen" />
		<!-- owl.carousel css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/owl.carousel.css">
		<!-- style css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/style.css">
		<!-- responsive css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/responsive.css">
		<!-- modernizr css -->
        <script src="<c:url value="bootstrap/js/vendor/modernizr-2.8.3.min.js" />"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
        <!--Header Area Start-->
        
		<!-- Mobile Menu Start -->
		<div class="mobile-menu-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="mobile-menu">
							<nav id="dropdown">
								<ul>
                                    <li><a href="index.html">HOME</a></li>
                                    <li><a href="shop.html">FEATURED</a></li>
                                    <li><a href="shop.html">REVIEW BOOK</a></li>
                                    <li><a href="shop.html">ABOUT AUTHOR</a></li>
                                    <li><a href="shop.html">TESTIMONIAL</a></li>
                                    <li><a href="blog.html">pages</a>
                                        <ul>
                                            <li><a href="about.html">About Us</a></li>
                                            <li><a href="cart.html">Cart Page</a></li>
                                            <li><a href="checkout.html">Check Out</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="my-account.html">My Account</a></li>
                                            <li><a href="shop.html">Shopping Page</a></li>
                                            <li><a href="single-product.html">Single Shop Page</a></li>
                                            <li><a href="wishlist.html">Wishlist Page</a></li>
                                            <li><a href="404.html">404 Page</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact-us.html">CONTACT</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>		
		<!-- Mobile Menu End -->   
		<!-- Cart Area Start -->
		<div class="shopping-cart-area section-padding">
		    <div class="container">
		        <div class="row">
		            <div class="col-md-12">
                        <div class="wishlist-table-area table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product-remove">Remove</th>
                                        <th class="product-image">Image</th>
                                        <th class="t-product-name">Product Name</th>
                                        <th class="product-edit">Edit</th>
                                        <th class="product-unit-price">Unit Price</th>
                                        <th class="product-quantity">Quantity</th>
                                        <th class="product-subtotal">Subtotal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="product-remove">
                                            <a href="#">
                                                <i class="flaticon-delete"></i>
                                            </a>
                                        </td>
                                        <td class="product-image">
                                            <a href="#">
                                                <img src="${pageContext.request.contextPath}/bootstrap/img/shop/1.jpg" alt="">
                                            </a>
                                        </td>
                                        <td class="t-product-name">
                                            <h3>
                                                <a href="#">Cold mountain</a>
                                            </h3>
                                        </td>
                                        <td class="product-edit">
                                            <p>
                                                <a href="#">Edit</a>
                                            </p>
                                        </td>
                                        <td class="product-unit-price">
                                            <p>$ 100</p>
                                        </td>
                                        <td class="product-quantity product-cart-details">
											<input type="number" value="1">
										</td>
                                        <td class="product-quantity">
											<p>$ 100</p>
										</td>
                                    </tr>
                                    <tr>
                                        <td class="product-remove">
                                            <a href="#">
                                                <i class="flaticon-delete"></i>
                                            </a>
                                        </td>
                                        <td class="product-image">
                                            <a href="#">
                                                <img src="${pageContext.request.contextPath}/bootstrap/img/shop/2.jpg" alt="">
                                            </a>
                                        </td>
                                        <td class="t-product-name">
                                            <h3>
                                                <a href="#">East of eden</a>
                                            </h3>
                                        </td>
                                        <td class="product-edit">
                                            <p>
                                               <a href="#">Edit</a>
                                            </p>
                                        </td>
                                        <td class="product-unit-price">
                                            <p>$ 100</p>
                                        </td>
                                        <td class="product-quantity product-cart-details">
											<input type="number" value="1">
										</td>
                                        <td class="product-quantity">
											<p>$ 100</p>
										</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>	              
		            </div>
		        </div>
		    </div>
		</div>

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
                                                    <form action="#">
                                                        <div class="check-register">
                                                            <input type="radio" />
                                                            <label>Checkout as Guest</label>
                                                        </div>
                                                        <div class="check-register">
                                                            <input type="radio" />
                                                            <label>Register</label>
                                                        </div>													
                                                    </form>
                                                    <p>Register and save time!</p>
                                                    <p>Register with us for future convenience:</p>
                                                    <p>Fast and easy check out</p>
                                                    <p>Easy access to your order history and status</p>
                                                    <button class="btn btn-default btn-checkout">CONTINUE</button>
                                                </div>
											</div>
											<div class="col-md-6 col-sm-6">
											<div class="checkout-collapse-inner">
												<h2 class="collapse-title">LOGIN</h2>
												<h4 class="collapse-sub-title">Already registered?</h4>
												<p class="login-info">Please log in below:</p>
												<form action="#">
													<div class="form-row">
														<input type="email" placeholder="Email Address*"/>
													</div>
													<div class="form-row">
														<input type="password" placeholder="Password*"/>
													</div>	
													<div class="check-register login-button">
														<a href="#">forgot your password?</a>
														<input class="btn btn-default" type="submit" value="LOGIN"/>
													</div>												
												</form>
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
													<label>Country <span class="required">*</span></label>
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
													<input type="text" placeholder="Last Name *">
												</p>
											</div>	
											<div class="col-md-12">
												<p class="form-row">
													<input type="text" placeholder="Company Name">
												</p>
											</div>	
											<div class="col-md-12">
												<p class="form-row">
													<input type="text" placeholder="Street address">
												</p>
											</div>
											<div class="col-md-12">
												<p class="form-row">
													<input type="text" placeholder="Town / City">
												</p>
											</div>
											<div class="col-md-6">
												<p class="form-row">
													<input type="text" placeholder="State / County *">
												</p>
											</div>
											<div class="col-md-6">
												<p class="form-row">
													<input type="text" placeholder="Postcode / Zip">
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
											<div class="col-md-12">
												<label class="checbox-info">
													<input type="checkbox" id="cbox">
													Create an account?
												</label>
												<div id="cbox_info">
													<p>Create an account by entering the information below. If you are a returning customer please login at the top of the page.</p>
													<p class="form-row form-row-phone">
														<label>Phone<span class="required">*</span></label>
														<input type="text" placeholder="Phone">
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
														<label>Country <span class="required">*</span></label>
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
												<textarea placeholder="Notes about your order, e.g. special notes for delivery." rows="10" cols="30" id="checkout-mess"></textarea>
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
															<th rowspan="1">Product Name</th>
															<th colspan="1">Price</th>
															<th rowspan="1">Qty</th>
															<th colspan="1">Subtotal</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><h3 class="product-name">People of the book</h3></td>
															<td><span class="cart-price"><span class="check-price">$155.00</span></span></td>
															<td>1</td>
															<!-- sub total starts here -->
															<td><span class="cart-price"><span class="check-price">$155.00</span></span></td>
														</tr>
														<tr>
															<td><h3 class="product-name">The secret garden</h3></td>
															<td><span class="cart-price"><span class="check-price">$222.00</span></span></td>
															<td>1</td>
															<!-- sub total starts here -->
															<td><span class="cart-price"><span class="check-price">$222.00</span></span></td>
														</tr>
													</tbody>
													<tfoot>
														<tr>
															<td colspan="3">Subtotal</td>
															<td><span class="check-price">$377.00</span></td>
														</tr>
														<tr>
															<td colspan="3">Shipping Handling (Flat Rate - Fixed)</td>
															<td><span class="check-price">$10.00</span></td>
														</tr>
														<tr>
															<td colspan="3"><strong>Grand Total</strong></td>
															<td><strong><span class="check-price">$387.00</span></strong></td>
														</tr>
													</tfoot>
												</table>
											</div>
											<div id="checkout-review-submit">
												<div class="cart-btn-3" id="review-buttons-container">
													<p class="left">Forgot an Item? <a href="#">Edit Your Cart</a></p>
													<button type="submit" title="Place Order" class="btn btn-default"><span>Place Order</span></button>
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
								<li><a href="#"><i class="fa fa-minus"></i> Billing Address</a></li>
								<li><a href="#"><i class="fa fa-minus"></i> Shipping Address</a></li>
								<li><a href="#"><i class="fa fa-minus"></i> Shipping Method</a></li>
								<li><a href="#"><i class="fa fa-minus"></i> Payment Method</a></li>
							</ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Check Out Area End -->
		
		<!-- all js here -->
		<!-- jquery latest version -->
        <script src="<c:url value ="bootstrap/js/vendor/jquery-1.12.0.min.js"/> "></script>
		<!-- bootstrap js -->
        <script src="<c:url value ="bootstrap/js/bootstrap.min.js"/> "></script>
		<!-- owl.carousel js -->
        <script src="<c:url value ="bootstrap/js/owl.carousel.min.js" />"></script>
		<!-- jquery-ui js -->
        <script src="<c:url value ="bootstrap/js/jquery-ui.min.js" />"></script>
		<!-- jquery Counterup js -->
        <script src="<c:url value ="bootstrap/js/jquery.counterup.min.js" />"></script>
        <script src="<c:url value ="bootstrap/js/waypoints.min.js" />"></script>	
		<!-- jquery countdown js -->
        <script src="<c:url value ="bootstrap/js/jquery.countdown.min.js" />"></script>
		<!-- jquery countdown js -->
        <script type="text/javascript" src="<c:url value ="bootstrap/venobox/venobox.min.js" /> "></script>
		<!-- jquery Meanmenu js -->
        <script src="<c:url value ="bootstrap/js/jquery.meanmenu.js" /> "></script>
		<!-- wow js -->
        <script src="<c:url value ="bootstrap/js/wow.min.js" /> "></script>	
		<script>
			new WOW().init();
		</script>
		<!-- scrollUp JS -->		
        <script src="<c:url value ="bootstrap/js/jquery.scrollUp.min.js" /> "></script>
		<!-- plugins js -->
        <script src="<c:url value ="bootstrap/js/plugins.js" /> "></script>
		<!-- Nivo slider js -->
		<script src="<c:url value ="bootstrap/lib/js/jquery.nivo.slider.js" />" type="text/javascript"></script>
		<script src="<c:url value ="bootstrap/lib/home.js" />" type="text/javascript"></script>
		<!-- main js -->
        <script src="<c:url value ="bootstrap/js/main.js" /> "></script>
    </body>
</html>