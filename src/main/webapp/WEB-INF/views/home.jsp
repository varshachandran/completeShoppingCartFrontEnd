<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="resources\css\bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources\css\style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="resources\js\jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="resources\js\simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="resources\js\bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- animation-effect -->
<link href="resources\css\animate.min.css" rel="stylesheet"> 
<script src="resources\js\wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
<link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

</head>

<body>	
<!-- header -->
	<div class="header">
			<div class="header-grid">
					<div class="container">
				<div class="header-left animated wow fadeInLeft" data-wow-delay=".5s">
					<ul>
					<li><i class="glyphicon glyphicon-headphones"></i><a href="#">24x7 live support</a></li>
						<li><i class="glyphicon glyphicon-envelope" ></i><a href="gmail.com">@example.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" ></i>+91 1234567890</li>
						
					</ul>
				</div>
				<div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
				<div class="header-right1 ">
					<ul>
		<c:choose>
					<c:when test="${empty loggedInUser}">
						<li><i class="glyphicon glyphicon-log-in" ></i><a href="loginhere">Login</a></li>
						<li><i class="glyphicon glyphicon-book" ></i><a href="registerhere">Register</a></li>
					</ul>
				</div>
				<div class="header-right2">
					<div class="cart box_1">
						<a href="#">
							<h3> <div class="total">
								<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
								<img src="resources\images\cart.png" alt="" />
							</h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
						<div class="clearfix"> </div>
					</div>	
				</div>
				<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
			<div class="container">
			<div class="logo-nav">
				
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						 <div class="navbar-brand logo-nav-left ">
							<h1 class="animated wow pulse" data-wow-delay=".5s"><a href="#">Style<span>Pluse</span></a></h1>
						</div>

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#" class="act">Home</a></li>	
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Women <b class="caret"></b></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6></h6>
												
												<li><a href="#">Accessories</a></li>
												<li><a href="#">Bags</a></li>
												<li><a href="#">Caps & Hats</a></li>
												<li><a href="#">Hoodies & Sweatshirts</a></li>
										
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6></h6>
												<li><a href="#">Jackets & Coats</a></li>
												<li><a href="#">Jeans</a></li>
												<li><a href="#">Jewellery</a></li>
												<li><a href="#">Jumpers & Cardigans</a></li>
												<li><a href="#">Leather Jackets</a></li>
												<li><a href="#">Long Sleeve T-Shirts</a></li>

											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6></h6>
												<li><a href="#">Shirts</a></li>
												<li><a href="#">Shoes, Boots & Trainers</a></li>
												<li><a href="#">Sunglasses</a></li>
												<li><a href="#">Sweatpants</a></li>
												<li><a href="#">Swimwear</a></li>
												<li><a href="#">Trousers & Chinos</a></li>

											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="row-top">
										<div class="col-sm-6 row1">
											<a href="#"><img src="resources\images\me.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class=" col-sm-6 row2">
											<a href="#"><img src="resources\images\me1.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
								<ul class="dropdown-menu multi multi1">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6></h6>
												
												<li><a href="#">Accessories</a></li>
												<li><a href="#">Bags</a></li>
												<li><a href="#">Caps & Hats</a></li>
												<li><a href="#">Hoodies & Sweatshirts</a></li>
										
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6></h6>
												<li><a href="#">Jackets & Coats</a></li>
												<li><a href="#">Jeans</a></li>
												<li><a href="#">Jewellery</a></li>
												<li><a href="#">Jumpers & Cardigans</a></li>
												<li><a href="#">Leather Jackets</a></li>
												<li><a href="#">Long Sleeve T-Shirts</a></li>

											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6></h6>
												<li><a href="#">Shirts</a></li>
												<li><a href="#">Shoes, Boots & Trainers</a></li>
												<li><a href="#">Sunglasses</a></li>
												<li><a href="#">Sweatpants</a></li>
												<li><a href="#">Swimwear</a></li>
												<li><a href="#">Trousers & Chinos</a></li>

											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="row-top">
										<div class="col-sm-6 row1">
											<a href="#"><img src="resources\images\me2.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class=" col-sm-6 row2">
											<a href="#"><img src="resources\images\me3.jpg" alt="" class="img-responsive"></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							
						
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
					</nav>
				</div>
				
		</div>
	</div>
<!-- //header -->


<!-- banner -->
	<div class="banner">
	
	
	<div class="banner-right">
					<ul id="flexiselDemo2">			
						<li><div class="banner-grid">
						<h2>Featured Products</h2>
						<div class="wome">
								<a href="#" ><img class="img-responsive" src="resources\images\bi1.jpg" alt="" />
								</a>
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="resources\images\ll.png" alt=""></a>
									
									<p class="ba-price"><del>Rs1000.00</del><em class="item_price">Rs700.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>							
								</div>							
							</div></li>
						<li><div class="banner-grid">
						<h2>Featured Products</h2>
						<div class="wome">
								<a href="#" ><img class="img-responsive" src="resources\images\bi.jpg" alt="" />
								</a>	
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="resources\images\ll.png" alt=""></a>
								
									<p class="ba-price"><del>Rs1000.00</del><em class="item_price">Rs700.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>						
								</div>						
							</div></li>
						<li><div class="banner-grid">
						<h2>Featured Products</h2>
						<div class="wome">
								<a href="#" ><img class="img-responsive" src="resources\images\bi2.jpg" alt="" />
								</a>	
								<div class="women simpleCart_shelfItem">
									<a href="#"><img src="resources\images\ll.png" alt=""></a>
									
									<p class="ba-price"><del>1000.00</del><em class="item_price">700.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>						
								</div>						
							</div></li>
						
					
					</ul>
					<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo2").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 5000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 1
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 1
		    		}
		    	}
		    });
		    
		});
	</script>
		<script type="text/javascript" src="resources\js\jquery.flexisel.js"></script>

					</div>

				
				</div>

	</div>
<!-- //banner -->
<!--content-->
		<div class="content">
		<div class="content-head">
					
					<div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-1">
						<div class="col-md-6 col-2">
							<a href="#"><img src="resources\images\pi3.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="col-md-6 col-p">
								<h5>For All Collections</h5>
								<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
								praesentium voluptatum deleniti atque</p>
								<a href="#" class="shop" data-hover="Shop Now">Shop Now</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-1">
						<div class="col-md-6 col-p">
								<h5>For All Collections</h5>
								<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
								praesentium voluptatum deleniti atque</p>
								<a href="#" class="shop" data-hover="Shop Now">Shop Now</a>
							</div>
						<div class="col-md-6 col-2">
							<a href="#"><img src="resources\images\pi.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="clearfix"> </div>
						</div>
						</div>
					
					<div class="col-md-6 col-m2 animated wow fadeInRight" data-wow-delay=".1s">
					
						<!---->
						 <!-- requried-jsfiles-for owl -->
							<link href="resources\css\owl.carousel.css" rel="stylesheet">
							    <script src="resources\js\owl.carousel.js"></script>
							        <script>
									    $(document).ready(function() {
									      $("#owl-demo").owlCarousel({
									        items : 2,
									        lazyLoad : false,
									        autoPlay : true,
									        navigation : true,
									        navigationText :  true,
									        pagination : false,
									      });
									    });
									  </script>
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->
						       <div id="owl-demo" class="owl-carousel">
					                <div class="item">					                	 
										  
											<a href="#"><img class="img-responsive" src="resources\images\bb.png" alt="" /></a>  
											<a href="#" class="shop-2" >Shop Now</a>
								
					                </div>
									<div class="item">					                	  
										
											<a href="#"><img class="img-responsive" src="resources\images\bb1.png" alt="" /></a>  
											<a href="#" class="shop-2">Shop Now</a>									
																		
					                </div>
									
									<div class="item">					                	 
									
											<a href="#"><img class="img-responsive" src="resources\images\bb.png" alt="" /> </a> 
											<a href="#" class="shop-2">Shop Now</a>									
																			
					                </div>
									<div class="item">					                	  
										
											<a href="#"><img class="img-responsive" src="resources\images\bb1.png" alt="" /></a>  
											<a href="#" class="shop-2">Shop Now</a>									
																		
					                </div>
							</div>
					   </div>
					   <div class="clearfix"></div>
			</div>	
					</div>
				
			<!---->
			
				<div class="content-top">
					<div class="col-md-5 col-md1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-3">
							<a href="#"><img src="resources\images\abc.jpg" class="img-responsive " alt="">
							<div class="col-pic">	
								<h5> Women's Wear</h5>
								<p>At vero eos et accusamus et</p>
							</div></a>
						</div>
						
					</div>
					<div class="col-md-7 col-md2 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="#">
											<div class="grid-img">
												<img  src="resources\images\pr1.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="resources\images\pr.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="resources\images\ll.png" alt=""></a>
									<h6><a href="#">Sed ut perspiciatis unde</a></h6>
									<p ><del>Rs1000.00</del><em class="item_price">Rs700.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="#">
											<div class="grid-img">
												<img  src="resources\images\pr3.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="resources\images\pr2.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="resources\images\ll.png" alt=""></a>
									<h6><a href="#">Sed ut perspiciatis unde</a></h6>
									<p ><del>Rs100.00</del><em class="item_price">Rs700.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="#">
											<div class="grid-img">
												<img  src="resources\images\pr5.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="resources\images\pr4.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="resources\images\ll.png" alt=""></a>
									<h6><a href="#">Sed ut perspiciatis unde</a></h6>
									<p ><del>Rs100.00</del><em class="item_price">Rs70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!----->
				<!---->
				<div class="content-top">
					
					<div class="col-md-7 col-md2 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="#">
											<div class="grid-img">
												<img  src="resources\images\pr6.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="resources\images\pr7.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="resources\images\ll.png" alt=""></a>
									<h6><a href="#">Sed ut perspiciatis unde</a></h6>
									<p ><del>Rs1000.00</del><em class="item_price">Rs700.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
							
						</div>
				
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="#">
											<div class="grid-img">
												<img  src="resources\images\pr9.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="resources\images\pr8.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="resources\images\ll.png" alt=""></a>
									<h6><a href="#">Sed ut perspiciatis unde</a></h6>
									<p ><del>Rs1000.00</del><em class="item_price">Rs700.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
						<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="#">
											<div class="grid-img">
												<img  src="resources\images\pr10.jpg" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="resources\images\pr11.jpg" class="img-responsive"  alt="">
											</div>			
										</a>		
									</figure>	
								</div>
								<div class="women">
									<a href="#"><img src="resources\images\ll.png" alt=""></a>
									<h6><a href="#">Sed ut perspiciatis unde</a></h6>
									<p ><del>Rs1000.00</del><em class="item_price">Rs70.00</em></p>
									<a href="#" data-text="Add To Cart" class="but-hover1 item_add">Add To Cart</a>
								</div>
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
					<div class="col-md-5 col-md1 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-3">
							<a href="#"><img src="resources\images\def.jpg" class="img-responsive " alt="">
							<div class="col-pic">
								<h5> Men's Wear</h5>
								<p>At vero eos et accusamus et</p>
							</div></a>
						</div>
						
					</div>
					<div class="clearfix"></div>
				</div>
			
			
				<!--products-->
<div class="social animated wow fadeInDown" data-wow-delay=".1s">
	<div class="container">
		<div class="col-sm-3 social-ic">
			<a href="https://www.facebook.com/">FACEBOOK</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="https://twitter.com/">TWITTER</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="https://google+.com/">GOOGLE+</a>
		</div>
		<div class="col-sm-3 social-ic">
			<a href="https://www.pinterest.com/">PINTEREST</a>
		</div>
	<div class="clearfix"></div>
	</div>
</div>




			



	<div class="container">
		<div class="flat-form">
			<ul class="tabs list-inline">
				
	
				
				</c:when>
					<c:when test="${not empty loggedInUser}">

						<li><a href="logout" class="btn btn-warning">LOGOUT</a></li>

					</c:when>
				</c:choose>
			</ul> 
			
</div>
</div>


			<div id="loginhere">
				<c:if test="${isUserClickedLoginHere==true}">
					<%@ include file="login.jsp"%>

				</c:if>
			</div>

			<div id="registerhere">
				<c:if test="${isUserClickedRegisterHere==true}">
					<%@ include file="register.jsp"%>

				</c:if>
			</div>

          
	

	<div id="logout">
		<c:if test="${not empty loggedInUser}">
	
			<td >Welcome ${loggedInUser},</td>
		</c:if>
</div>
	



	 <div id="admin" class="external">
			<div>
				<c:if test="${isadmin==true}">

					<%@ include file="adminhome.jsp"%>

				</c:if>
				</div>
				
			
				
				<div id="supplier">
					<c:if test="${isIsadminClickedSupplier==true}">
						<%@ include file="adminhome.jsp"%>
						<%@ include file="supplier.jsp"%>
					</c:if>
				</div>

			</div>
			<div id="product" style="background:white">
					<c:if test="${isIsadminClickedProduct==true}">
						
						<%@ include file="product.jsp"%>
					</c:if>
				</div>
			
			<div id="category">
					<c:if test="${isIsadminClickedCategory==true}">
						<%@ include file="adminhome.jsp"%>
						<%@ include file="category.jsp"%>
					</c:if>
				</div>
		
</body>
</html>