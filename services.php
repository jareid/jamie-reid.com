<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Services' executable='1' order='3'  />
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
									<h1>Services</h1>
									<blockquote>
										<cms:editable name='whyhire_title1' type='text'></cms:editable>	<br/>
										<cms:editable name='whyhire_title2' type='text'>What I can offer you and your business</cms:editable>								
									</blockquote>
								</div>

								<div class="col-md-12">
									<div class="row">
									
										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="freelance-services">
												<h1 class="brandColor"> <i class="fa fa-chevron-right"></i><cms:editable name='whyhire_1_title' type='text'>Software Development</cms:editable></h1>
												<h2><small><cms:editable name='whyhire_1_title2' type='text'>Website Backend</cms:editable></small></h2>
												<p><cms:editable name='whyhire_1_text' type='text'>Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem.</cms:editable></p>
											</div>
										</div>

										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="freelance-services">
												<h1 class="brandColor"> <i class="fa fa-chevron-right"></i><cms:editable name='whyhire_2_title' type='text'>Software Development</cms:editable></h1>
												<h2><small><cms:editable name='whyhire_2_title2' type='text'>Website Backend</cms:editable></small></h2>
												<p><cms:editable name='whyhire_2_text' type='text'>Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem.</cms:editable></p>
											</div>
										</div>

										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="freelance-services">
												<h1 class="brandColor"> <i class="fa fa-chevron-right"></i><cms:editable name='whyhire_3_title' type='text'>Software Development</cms:editable></h1>
												<h2><small><cms:editable name='whyhire_3_title2' type='text'>Website Backend</cms:editable></small></h2>
												<p><cms:editable name='whyhire_3_text' type='text'>Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem.</cms:editable></p>
											</div>
										</div>

										<div class="col-md-6 col-sm-6 col-xs-12">
											<div class="freelance-services">
												<h1 class="brandColor"> <i class="fa fa-chevron-right"></i><cms:editable name='whyhire_4_title' type='text'>Software Development</cms:editable></h1>
												<h2><small><cms:editable name='whyhire_4_title2' type='text'>Website Backend</cms:editable></small></h2>
												<p><cms:editable name='whyhire_4_text' type='text'>Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem.</cms:editable></p>
											</div>
										</div>

										<br/>&nbsp;<br/>

										<div class="col-md-12 col-sm-12 col-xs-12 text-center">										
											<h2 class="text-center">Get Free Quote Here   <a class="link" href="contact.php" target="_blank">Here <i class="fa fa-chevron-right"></i> </a></h2>
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