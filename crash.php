<?php require_once( 'update/cms.php' ); ?>
<cms:template title='404' executable='1' order='2'  />
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
                            <div class="col-md-12 about">
                                <h1> 500 - Server Error </h1>		
                                
                                <blockquote>
                                 Good gawd! What have you done! You crashed the server....
                                 
                                 Please try the <a href="<cms:get_custom_field 'home_link' masterpage='globals.php' />"><cms:get_custom_field 'home_name' masterpage='globals.php' /></a> page or use the links provided above or below.		
                                </blockquote>
                            </div>
                            	<div class="col-md-12 col-sm-12 col-xs-24">
									<div class="contentBox">
                                        <img class="center-block" src="<cms:editable name='image_500' type='image' height='365' width='280' />" width="100%" style="max-width: 300px;" />
									</div>
								</div>
                        </section>
					</div>
					<!-- profile section ends -->

				</div>
			</div>
			<!-- main wrapper ends -->

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
