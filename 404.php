<?php require_once( 'update/cms.php' ); ?>
<cms:template title='404' executable='1' order='8'  />
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
                    <cms:embed 'pages/error.html' />
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
	</body>
</html>
<?php COUCH::invoke(); ?>