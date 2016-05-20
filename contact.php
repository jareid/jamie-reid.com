<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Contact Me' executable='1' order='6'  />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html lang="en">
<head>
	<!-- JQuery Js -->
	<script type="script/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	
	<!-- Bootstrap Js -->
	<script type="script/javascript" src="js/bootstrap.min.js"></script>
    
    <cms:embed 'head.html' />
 </head>
	<body>
		<!-- Main Wrapper start-->
        <div class="container-fluid">
            <div class="row">
                <!-- Navbar -->
                <cms:embed 'addons/navbar.html' />                    
                <!-- Navbar ends -->

                <!-- Content section -->
                <div class="container">
                    <cms:embed 'pages/contact.html' />
                </div>
                <!-- Content section ends -->

            </div>
        </div>
        <!-- main wrapper ends -->

        <!-- footer starts -->
        <footer>
            <cms:embed 'addons/footer.html' />
        </footer>
        <!-- footer ends -->
        
            <!-- JS for the map api -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false&libraries=geometry&v=3.7"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/maplace.min.js"></script>
        <script src="js/app.js"></script>
        <script type="text/javascript">
			$(document).ready(function ($) {
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
			});
		</script>
	</body>
</html>
<?php COUCH::invoke(); ?>