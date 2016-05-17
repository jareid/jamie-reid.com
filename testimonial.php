<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Testimonials' executable='1' order='5'  />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
 <cms:embed 'head.html' />
</head>
	<body>
	<?php include_once("analyticstracking.php") ?>
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
								<div class="col-md-12 page-title">
									<h1>Testimonials</h1>
									<blockquote>
										<cms:editable name='title1' type='text'>What my clients say about me </cms:editable><br/>
										<cms:editable name='title2' type='text'>Testimonials from previous projects</cms:editable>								
									</blockquote>
								</div>

								<div class="col-md-12">
									<div class="row">
									
										<div class="col-md-12 col-sm-12 col-xs-12">
											<div class="Testimonials">
												<div class="col-md-2 col-sm-2 col-xs-12">
													<img src="<cms:editable name='testimonial_1_image' width='200' height='200' type='image' />" width="100%;">
													<div class="hidden-lg hidden-md">&nbsp;<br/></div>
												</div>
												<div class="col-md-10 col-sm-10 col-xs-12">
													<h1 class="brandColor"><cms:editable name='testimonal_1_name' type='text'>John Doe</cms:editable></h1>
													<h2><small><cms:editable name='testimonal_1_project' type='text'>Project Link or Name</cms:editable></small></h2>
													<p><cms:editable name='testimonal_1_quote' type='richtext'>"Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem."</cms:editable></p>
												</div>
											</div>

											<div class="Testimonials">
												<div class="col-md-2 col-sm-2 col-xs-12">
													<img src="<cms:editable name='testimonial_2_image' width='200' height='200' type='image' />" width="100%;">
													<div class="hidden-lg hidden-md">&nbsp;<br/></div>
												</div>
												<div class="col-md-10 col-sm-10 col-xs-12">
													<h1 class="brandColor"><cms:editable name='testimonal_2_name' type='text'>John Doe</cms:editable></h1>
													<h2><small><cms:editable name='testimonal_2_project' type='text'>Project Link or Name</cms:editable></small></h2>
													<p><cms:editable name='testimonal_2_quote' type='richtext'>"Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem."</cms:editable></p>
												</div>
											</div>

											<div class="Testimonials">
												<div class="col-md-2 col-sm-2 col-xs-12">
													<img src="<cms:editable name='testimonial_3_image' width='200' height='200' type='image' />" width="100%;">
													<div class="hidden-lg hidden-md">&nbsp;<br/></div>
												</div>
												<div class="col-md-10 col-sm-10 col-xs-12">
													<h1 class="brandColor"><cms:editable name='testimonal_3_name' type='text'>John Doe</cms:editable></h1>
													<h2><small><cms:editable name='testimonal_3_project' type='text'>Project Link or Name</cms:editable></small></h2>
													<p><cms:editable name='testimonal_3_quote' type='richtext'>"Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem."</cms:editable></p>
												</div>
											</div>
											
											<div class="Testimonials">
												<div class="col-md-2 col-sm-2 col-xs-12">
													<img src="<cms:editable name='testimonial_4_image' width='200' height='200' type='image' />" width="100%;">
													<div class="hidden-lg hidden-md">&nbsp;<br/></div>
												</div>
												<div class="col-md-10 col-sm-10 col-xs-12">
													<h1 class="brandColor"><cms:editable name='testimonal_4_name' type='text'>John Doe</cms:editable></h1>
													<h2><small><cms:editable name='testimonal_4_project' type='text'>Project Link or Name</cms:editable></small></h2>
													<p><cms:editable name='testimonal_4_quote' type='richtext'>"Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem."</cms:editable></p>
												</div>
											</div>


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