<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Home' executable='1' order='1'>
    <cms:repeatable name='listing_pictures' >
       <cms:editable name='listing_image' type='image' />
       <cms:editable name='listing_image_title' type='text' />
    </cms:repeatable>
</cms:template>               
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <cms:embed 'head.html' /> 
</head>
	<body>
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
            <footer>
                 <cms:embed 'addons/footer.html' />
            </footer>
			<!-- footer ends -->
			


	</body>
</html>
<?php COUCH::invoke(); ?>