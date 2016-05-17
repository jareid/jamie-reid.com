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
                    <cms:embed 'addons/navbar.html' />                    
					<!-- Navbar ends -->

					<!-- Profile section -->
					<div class="container">
                        <cms:embed 'pages/home.html' />    
					</div>
					<!-- profile section ends -->

				</div>
			</div>
			<!-- main wrapper ends -->

			<!-- footer starts -->
			<cms:embed 'addons/footer.html' />
			<!-- footer ends -->
			
		<!-- Bootstrap Js -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</body>
</html>
<?php COUCH::invoke(); ?>