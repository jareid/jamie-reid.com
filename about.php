<?php require_once( 'update/cms.php' ); ?>
<cms:template title='About' executable='1' order='2'  />
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
									<h1> About</h1>
									<blockquote>
										<cms:editable name='title' type='text'>My Skills</cms:editable> <br/>
										<cms:editable name='title2' type='text'>Get to know Me and My Software Programming Skills</cms:editable>									
									</blockquote>
								</div>


								<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="contentBox">

										<div class="col-md-3 col-sm-12 col-xs-12">
											<br/>
											<img class="center-block" src="<cms:editable name='image_me' type='image' height='300' width='300' />" width="100%" style="max-width: 300px;" />
										</div>

										<div class="col-xs-12 col-sm-12 col-md-9">
											<h1 class="brandColor"><cms:get_custom_field 'name' masterpage='globals.php' /></h1>
											<h2><strong><cms:get_custom_field 'jobtitle' masterpage='globals.php' /></strong></h2>
											<p><strong><cms:editable name='about1_title' type='text'>Freelance Backend Developer Based in Warrington, United Kingdom.</cms:editable></strong><br/>
											   <cms:editable name='about1' type='text'>I have a degree in Computer Science B.Sc from University of Manchester, one of the top of my class in all of the programming courses (Java, C, C++, C with OpenGL)</cms:editable></p>

										   	<p><cms:editable name='about2' type='text'>My core skill set includes the following skills: C, C++, JavaSE, JavaEE, JavaFX, Ant, Maven, SQL (MSSQL, MySQL, Oracle), Bash Shell. I have worked with the following IDEs: Visual Studio, Eclipse, IntelliJ, NetBeans and I am happy to work with any source control system. I am happy to work both Windows or Linux operating systems.</cms:editable></p>
										</div>
										
									</div>
								</div>

								<div class="col-md-8 col-sm-6 col-xs-12">
									<div class="contentBox">
										<div class="col-xs-12 col-sm-12 col-md-12">									
											<h4 class="brandColor"><strong><cms:editable order='1' group='section_1' name='title' type='text' >About Me</cms:editable> :</strong></h4>
											<p><cms:editable order='2' group='section_1' name='text' type='text'>Software Developer bases in Warrington, United Kingdom<br/>
											Lorem ipsum dolor sit amet, ne iudico dicant pri. Mel menandri mandamus oportere no, ornatus hendrerit est cu. Eu movet facete assentior vis, cu dolores expetendis vix. Cu nam utroque vivendo nominavi, modus posse te ius.Lorem ipsum dolor sit amet, ne iudico dicant pri.</cms:editable></p>

											<br/>

											<h4 class="brandColor"><strong><cms:editable order='1' group='section_2' name='title' type='text'>What I can do for you</cms:editable> :</strong></h4>
											<p><cms:editable order='2' group='section_2' name='text' type='text'>Lorem ipsum dolor sit amet, ne iudico dicant pri. Mel menandri mandamus oportere no, ornatus hendrerit est cu. Eu movet facete assentior vis, cu dolores expetendis vix. Cu nam utroque vivendo nominavi, modus posse te ius.Lorem ipsum dolor sit amet, ne iudico dicant pri. Mel menandri mandamus oportere no, ornatus hendrerit est cu. Eu movet facete assentior vis, cu dolores expetendis vix. Cu nam utroque vivendo nominavi, modus posse te ius.</cms:editable>
											<br/><br/>
											<a class="link" href="contact.php">Get in touch with me Get Your Project Quote Here </a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-4 col-sm-6 col-xs-12">
									<div class="contentBox">
										<h4 class="brandColor"><strong>My Skills:</strong></h4>
										<div class="development-skills">
											<strong><cms:editable order='1' group='skills_one' name='name' type='text'/> :</strong>
											<div class="progress">
											  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
											  aria-valuemin="0" aria-valuemax="<cms:get_custom_field 'skills_max_years' masterpage='globals.php' />" style="width:<cms:editable order='3' group='skills_one' name='percent' type='text'/>%">
											  	<div class="expYears"><cms:editable order='2' group='skills_one' name='years' type='text'/></div>  
											  	</div>
											</div>

											<strong><cms:editable order='1' group='skills_two' name='name' type='text'/> :</strong>
											<div class="progress">
											  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
											  aria-valuemin="0" aria-valuemax="<cms:get_custom_field 'skills_max_years' masterpage='globals.php' />" style="width:<cms:editable order='3' group='skills_two' name='percent' type='text'/>%">
											  	<div class="expYears"><cms:editable order='2' group='skills_two' name='years' type='text'/></div>  
											  	</div>
											</div>

											<strong><cms:editable name='skill_3_name' type='text'>SQL</cms:editable> :</strong>
											<div class="progress">
											  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
											  aria-valuemin="0" aria-valuemax="<cms:get_custom_field 'skills_max_years' masterpage='globals.php' />" style="width:<cms:editable name='skill_3_percent' type='text'>80</cms:editable>%">
											  	<div class="expYears"><cms:editable name='skill_3_years' type='text'>8 Years</cms:editable></div>  
											  	</div>
											</div>

											<strong><cms:editable order='1' group='skills_four' name='name' type='text'/> :</strong>
											<div class="progress">
											  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
											  aria-valuemin="0" aria-valuemax="<cms:get_custom_field 'skills_max_years' masterpage='globals.php' />" style="width:<cms:editable order='3' group='skills_four' name='percent' type='text'/>%">
											  	<div class="expYears"><cms:editable order='2' group='skills_four' name='years' type='text'/></div>  
											  	</div>
											</div>
											
											<strong><cms:editable order='1' group='skills_five' name='name' type='text'/> :</strong>
											<div class="progress">
											  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
											  aria-valuemin="0" aria-valuemax="<cms:get_custom_field 'skills_max_years' masterpage='globals.php' />" style="width:<cms:editable order='3' group='skills_five' name='percent' type='text'/>%">
											  	<div class="expYears"><cms:editable order='2' group='skills_five' name='years' type='text'/></div>  
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</body>
</html>
<?php COUCH::invoke(); ?>