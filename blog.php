<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Blog' cloneable='1' executable='1' order='6' >
	<cms:editable name='blog_content' type='richtext' />
</cms:template>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
 <cms:embed 'head.html' />
</head>
	<body>
		<!-- main Wrapper start-->
			<div class="container-fluid">
				<div class="row">
				
					<!-- Navbar -->
					<nav role="navigation" class="navbar navbar-default">
					    <div class="container">
					        <!-- Brand and toggle get grouped for better mobile display -->
					        <div class="navbar-header">
					            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
					                <span class="sr-only">Toggle navigation</span>
					                <span class="icon-bar"></span>
					                <span class="icon-bar"></span>
					                <span class="icon-bar"></span>
					            </button>
					            <a href="index.php" class="navbar-brand"><img src="img/logo.png"></a>
					        </div>
					        <!-- Collection of nav links and other content for toggling -->
					        <div id="navbarCollapse" class="collapse navbar-collapse">
								<cms:embed 'navbar.html' />
					        </div>
					    </div>
					</nav>
					<!-- Navbar ends -->

					<!-- space btwn menu and content -->
					<div class="space"></div>

					<!-- Profile section -->
					<div class="container">

							<section>
								<div class="col-md-12 about">
									<h1> Blog </h1>									
									<blockquote>
										<cms:show k_page_title /> <br/>
										<cms:show k_page_date format='jS M, y' />							
									</blockquote>
								</div>


								<div class="col-md-8 col-sm-6 col-xs-12">
								<cms:pages masterpage='blog.php'>
									<div class="contentBox">
										<div class="col-xs-12 col-sm-12 col-md-12">
											<cms:show blog_content />
										</div>
									</div>
								</div>
								</cms:pages>
								<div class="col-md-4 col-sm-6 col-xs-12">
									<div class="contentBox">
										<h4 class="brandColor"><strong>Recent Posts:</strong></h4>
										<div class="development-skills">
											<ul>
												<cms:pages masterpage='blog.php' limit='10'>
												<li><a href="index.html">1</a></li>			
												</cms:pages>
											</ul>
											<ul class="footer-nav">
												<li><a href="index.html">1</a></li>
												<li><a href="about.html">2</a></li>
												<li><a href="services.html">3</a></li>
												<li><a href="Testimonials.html">4</a></li>
												<li><a href="contact.html">5</a></li>
											</ul>
										</div>
									</div>
								</div>

							</section>

					</div>
					<!-- profile section ends -->

				</div>
			</div>
			<!-- main wrapper ends -->

			<!-- footer starts -->
			<cms:embed 'footer.html' />
			<!-- footer ends -->

		<!-- Bootstrap Js -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</body>
</html>
<?php COUCH::invoke(); ?>