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
	<!-- JQuery Js -->
	<script type="script/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	
	<!-- Bootstrap Js -->
	<script type="script/javascript" src="js/bootstrap.min.js"></script>
    
    <cms:embed 'head.html' />

     <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css"> 

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
			<!-- footer ends -->ç
            
            <!-- JS for the image slider on the Home Page -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
            <script type="text/javascript">        
              $(document).ready(function(){
                $('.bxslider').bxSlider({   
                    auto: true,
                    capations: true,
                    pager: false,
                    minSlides: 3,
                    maxSlides: 3,
                    slideWidth: 250,
                    slideMargin: 10
                });
              });
            </script>
	</body>
</html>
<?php COUCH::invoke(); ?>