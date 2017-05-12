<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Grab a SPA-SALON</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="eg. makeup">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li><a href="#">My Account</a></li>
							<li><a href="cart.php">Your Cart</a></li>
							<li><a href="checkout.php">Checkout</a></li>		
						</ul>
					</div>
				</div>
			</div>
		</div>
        
        
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.html" class="logo pull-left"><img src="themes/images/logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li><a href="./spa-services.php">Spa</a>					
								<ul>
									<li><a href="./products.php">Hair Removal</a></li>
									<li><a href="./products.html">Hand and Foot</a></li>
									<li><a href="./products.php">Body Treatments</a>
                                    </li>									
                                    <li><a href="./products.php">Skin Care</a>
								</ul>
							</li>															
							<li><a href="./salon-services..php">Salon</a>		
                            <ul>									
									<li><a href="./products.php">Hair</a></li>
									<li><a href="./products.html">Nails</a></li>
									<li><a href="./products.php">Make-Up</a></li>
								</ul> 
                            </li>
							<li><a href="./products.php">Team</a><li>
								
						</ul>
					</nav>
				</div>
                
                
                
			</section>
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="themes/images/carousel/banner-1.jpg" alt="" />
						</li>
						<li>
							<img src="themes/images/carousel/banner-2.jpg" alt="" />
							<div class="intro">
								<h1>Mothers Day Special</h1>
								<p><span>Up to 20% Off</span></p>
								<p><span>On selected services only</span></p>
							</div>
						</li>
					</ul>
				</div>			
			</section>
            
            
            
			<section class="header_text">
                <strong>Salon and Spa<br></strong>
                  <p> 
                      "We Believe that Beauty transcends beyond the physical experience,<br> and exists at the core of a person."</p> 
			</section>
            
			<section class="main-content">
				<div class="row">
					<div class="span12">							
						<div class="row feature_box">						
							<div class="span4">
								<div class="service">
									<div class="responsive">	
										<img src="themes/images/feature_img_2.png" alt="" />
										<h4>Mother's Day <strong>Special</strong></h4>
										<p>Get haircut and hair color ideas for your mom. Discounts awaits..</p>									
									</div>
								</div>
							</div>
							<div class="span4">	
								<div class="service">
									<div class="customize">			
										<img src="themes/images/feature_img_1.png" alt="" />
										<h4><strong>FREE </strong>PRODUCTS</h4>
										<p>We are giving away free products for every Php 1000 minimum service fee.</p>
									</div>
								</div>
							</div>
							<div class="span4">
								<div class="service">
									<div class="support">	
										<img src="themes/images/feature_img_3.png" alt="" />
										<h4>Getting a Look <strong>You'll Love</strong></h4>
										<p>Asking yourself these three questions before you get to the salon will help you get the perfect haircut and style for you.</p>
									</div>
								</div>
							</div>	
						</div>		
					</div>				
				</div>
			</section>
			

			<section id="copyright">
				<span>Copyright 2013 bootstrappage template  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script src="themes/js/jquery.flexslider-min.js"></script>
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>
    </body>
</html>