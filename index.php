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
    <!-- JS for the image slider on the Home Page -->
    <link rel="stylesheet" type="text/css" href=""slider.css">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/jssor.slider.mini.js"></script>	
    <script>
    jQuery(document).ready(function ($) {
        var slider_options = {
          $AutoPlay: true,
          $AutoPlaySteps: 3,
          $SlideDuration: 160,
          $SlideWidth: 200,
          $SlideSpacing: 3,
          $Cols: 3
          $ArrowNavigatorOptions: {
            $Class: $JssorArrowNavigator$,
            $Steps: 3
          },
          $BulletNavigatorOptions: {
            $Class: $JssorBulletNavigator$,
            $SpacingX: 1,
            $SpacingY: 1
          }
        };
        
        var img_slider = new $JssorSlider$("img_slider", slider_options);
        
        //responsive code begin
        //you can remove responsive code if you don't want the slider scales while window resizing
        function ScaleSlider() {
            var refSize = img_slider.$Elmt.parentNode.clientWidth;
            if (refSize) {
                refSize = Math.min(refSize, 350);
                img_slider.$ScaleWidth(refSize);
            }
            else {
                window.setTimeout(ScaleSlider, 30);
            }
        }
        ScaleSlider();
        $(window).bind("load", ScaleSlider);
        $(window).bind("resize", ScaleSlider);
        $(window).bind("orientationchange", ScaleSlider);
        //responsive code end
    });
    </script>
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