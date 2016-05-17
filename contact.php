<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Contact' executable='1' order='6' />
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

							<section>
								<div class="col-md-12 page-title">
									<h1><cms:editable name='short_title' group='form' order='1' type='text'/></h1>
									<blockquote>
										<cms:editable name='long_title' group='form' order='2' type='text'/>
										<br/>
										<cms:editable name='instructions' group='form' order='3' type='text'/>				
									</blockquote>
								</div>

								<div class="col-md-12">
									<div class="row">
										
										<div class="form col-md-6 col-sm-6 col-xs-12">
											 <form id="ajax-contact" method="post" action="mymail.php">
											 	<div class="form-group">
    												<input type="text" class="form-control" placeholder="<cms:editable name='name' group='placeholders' order='1' type='text'/>" id="name" name="name">
											 	</div>

											 	<div class="form-group">
    												<input type="email" class="form-control" placeholder="<cms:editable name='email' group='placeholders' order='2' type='text'/>" id="email" name="email">
											 	</div>

											 	<div class="form-group">
    												<input type="text" class="form-control" placeholder="<cms:editable name='subject' group='placeholders' order='3' type='text'/>" id="subject" name="subject">
											 	</div>
											 	<div class="form-group">
    												<textarea class="form-control form-textarea" rows="5" placeholder="<cms:editable name='message' group='placeholders' order='4' type='text'/>" name="message" id="message"></textarea>
											 	</div>

												<div class="col-md-6 col-sm-12 col-xs-12 row">
											 		<input type="submit" id="submit" class="btn-send" value="<cms:editable name='button_value' group='form' order='4' type='text'/>" name="submit">
											 	</div>
											 	
											 	<div class="col-md-6 col-sm-12 col-xs-12 row">
													<div id="form-messages"></div>
												</div>
											 </form>

										</div>

										<div class="form col-md-6 col-sm-6 col-xs-12 contact-info">
											<div class="row">
												<div class="col-md-3 col-md-offset-1 col-sm-3 col-xs-4"><strong>Email:</strong></div>
												<div class="col-md-7 col-sm-9 col-xs-8"><cms:get_custom_field 'email_one' masterpage='globals.php' /></cms:editable></div>				
											</div>
											<div class="row">
												<div class="col-md-3 col-md-offset-1 col-sm-3 col-xs-4"><strong>Skype:</strong></div>
												<div class="col-md-7 col-sm-9 col-xs-8"><cms:get_custom_field 'skype' masterpage='globals.php' /></div>
											</div>
											<div class="row">
												<div class="col-md-3 col-md-offset-1 col-sm-3 col-xs-3"><strong>Social:</strong></div>
												<div class="col-md-7 col-sm-9 col-xs-7">
													<div class="contact-social">
														<div class="social">
															<div class="freelance-ico">
																<a href="<cms:get_custom_field 'link_fbook' masterpage='globals.php' />"target="_blank"><i class="fa fa-facebook"></i></a>
															</div>
															<div class="freelance-ico">
																<a href="<cms:get_custom_field 'link_lnkdin' masterpage='globals.php' />" target="_blank"><i class="fa fa-linkedin"></i></a>
															</div>
															<div class="freelance-ico">
																<a href="<cms:get_custom_field 'link_gplus' masterpage='globals.php' />" target="_blank"><i class="fa fa-google-plus"></i></a>
															</div>
															<div class="freelance-ico">
																<a href="<cms:get_custom_field 'link_upwork' masterpage='globals.php' />" target="_blank" title="upWork"><i class="fa fa-desktop"></i></a>
															</div>
														</div>
												   	</div>													
												</div>								
											</div>
											<div class="row">
												<div class="col-md-11 col-md-offset-1 col-sm-12 col-xs-12 hidden-xs">
													<div id="gmap"></div>
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
		<script src="http://maps.google.com/maps/api/js?sensor=false&libraries=geometry&v=3.7"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script src="js/maplace.min.js"></script>
		<script src="js/app.js"></script>		
		<script type="text/javascript">
			$(function() {
			    new Maplace({
			    show_markers: false,
			    locations: [{
			        lat: 53.39, 
			        lon: -2.597,
			        zoom: 4
			    }]
			}).Load();
			});
		</script>


	</body>
</html>
<?php COUCH::invoke(); ?>