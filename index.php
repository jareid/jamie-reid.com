<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Home' executable='1' order='1' />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
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
						<div class="row">

							<!-- Profile Picture -->
							<div class="col-md-6 col-sm-12 col-xs-12 col-md-push-6">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="row">
										<div class="jamiereid">
											<div class="embed-responsive embed-responsive-16by9">
												<iframe width="270" height="270" class="embed-responsive-item" src="<cms:editable name='youtube_link' type='text'>https://www.youtube.com/embed/vqcAoZqg9d0</cms:editable>?rel=0&showinfo=0"></iframe>
											</div>
										</div>
									</div>
								</div>

								<!-- Tags -->
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="row">
										<div class="freelancer-info">

											<!-- Tags on main page -->
											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='1' name='id1' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='2' name='id2' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='3' name='id3' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='4' name='id4' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='5' name='id5' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id6' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id7' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id8' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id9' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id10' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id11' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id12' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id13' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id14' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id15' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id16' type='text'/></h4>
											</div>

											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='6' name='id17' type='text'/></h4>
											</div>
											
											<div class="tagCloud">
												<h4><cms:editable group='tagCloud' order='18' name='id18' type='text'/></h4>
											</div>
									   	</div>
								   	</div>
							   	</div>
							</div>

							<!-- Persinal information -->
							<div class="col-md-6 col-sm-12 col-xs-12 col-md-pull-6">
								<!-- about -->
								<div class="col-md-12">
									<div class="row">
										<div class="freelancer-info">
											<h1 class="brandColor">Jamie Reid</h1>
											<h2 class="brandSecColor"><strong><cms:set jobtitle=site name 'global'/></strong></h2>
											<p><strong><cms:editable name='simpleabout_title' type='text'>Freelance Full Stack Developer Based in Warrington, United Kingdom.</cms:editable></strong><br/>

											   <cms:editable name='simpleabout_text' type='text'>I have a degree in Computer Science B.Sc from University of Manchester, one of the top of my class in all of the programming courses (Java, C, C++, C with OpenGL)</cms:editable></p>
										   	<div class="social">
												<div class="freelance-ico">
													<a href="<cms:set link_fbook=site name 'global'/>" target="_blank"><i class="fa fa-facebook"></i></a>
												</div>
												<div class="freelance-ico">
													<a href="<cms:set link_lnkdin=site name 'global'/>" target="_blank"><i class="fa fa-linkedin"></i></a>
												</div>
												<div class="freelance-ico">
													<a href="<cms:set link_gplus=site name 'global'/>" target="_blank"><i class="fa fa-google-plus"></i></a>
												</div>
												<div class="freelance-ico">
													<a href="<cms:set link_upwork=site name 'global'/>" target="_blank" title="upWork"><i class="fa fa-desktop"></i></a>
												</div>
										   	</div>
										</div>
									</div>
								</div>
								<!-- personal details -->
								<div class="col-md-12">
									<div class="row">
										<div class="freelance-webdesigner">
											<h3>Personal Information</h3>

											<div class="col-md-12 col-sm-12 row personal-info">
												<div class="row">
													<div class="col-md-3 col-sm-3 col-xs-4">Name:</div>
													<div class="col-md-9 col-sm-9 col-xs-8"><cms:set name=site name 'global'/></div>								
												</div>
												<div class="row">
													<div class="col-md-3 col-sm-3 col-xs-4">Occupation:</div>
													<div class="col-md-9 col-sm-9 col-xs-8"><cms:set jobtitle=site name 'global'/></div>								
												</div>
												<div class="row">
													<div class="col-md-3 col-sm-3 col-xs-4">Email <sup>(1)</sup> :</div>
													<div class="col-md-9 col-sm-9 col-xs-8"><cms:set email_one=site name 'global'/></div>								
												</div>
												<div class="row">
													<div class="col-md-3 col-sm-3 col-xs-4">Email <sup>(2)</sup> :</div>
													<div class="col-md-9 col-sm-9 col-xs-8"><cms:set email_two=site name 'global'/></div>								
												</div>
												<div class="row">
													<div class="col-md-3 col-sm-3 col-xs-4">Skype:</div>
													<div class="col-md-9 col-sm-9 col-xs-8"><cms:set skype=site name 'global'/></div>								
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
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