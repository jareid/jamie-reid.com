<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Blog' clonable='1' dynamic_folders='1' commentable='0' executable='1' order='5' >
	<cms:editable name='blog_content' label='Content' type='richtext' order='1' />
	<cms:editable name='blog_summary' label='Summary' desc='Used by blog listing and search engines' type='textarea' height='125' order='2' />
	<cms:editable name='blog_picture' label='Picture' width='800' quality='100' show_preview='1' order='3' type='image' />
	<cms:editable name='blog_picture_caption' label='Picture Caption' order='4' type='text' />
	<cms:editable name='blog_picture_thumbnail' label='Picture Thumbnail' width='280' height='150' crop='1' quality='100' show_preview='1' assoc_field='blog_picture' order='5' type='thumbnail' />
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
                        <cms:embed 'blog/blog.html' />    
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
			
		<!-- Bootstrap Js -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</body>
</html>
<?php COUCH::invoke(); ?>