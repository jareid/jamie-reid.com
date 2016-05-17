<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Global Settings' executable='0' order='7' >

	<!-- Globals Data -->
	<cms:editable name='group_seo' label='Search Engine Optimization' type='group' order='1' />
	<cms:editable name='group_miscellaneous' label='Miscellaneous' type='group' order='2' />
	
	<!-- Global Blog -->
	<cms:editable name='group_seo' label='Search Engine Optimization' type='group_blog' order='1' />
	
	<!-- Global Data -->
	<cms:editable name='fullname' label='Full Name' type='text' group='group_data' order='1' />
	<cms:editable name='shortname' label='Short Name' type='text' group='group_data' order='2' />
	<cms:editable name='namejob' label='Name And Job' type='text' group='group_data' order='2' />
	<cms:editable name='jobtitle' label='Job Title' type='text' group='group_data' order='3' />
	<cms:editable name='email_one' label='eMail One' type='text' group='group_data' order='4' />
	<cms:editable name='email_two' label='eMail Two' type='text' group='group_data' order='5' />
	<cms:editable name='skype' label='Skype' type='text' group='group_data' order='6' />
	
	<!-- Global Links -->
	<cms:link name='link_fbook' label='Facebook Link' type='text' group='group_links' order='1' />
	<cms:link name='link_gplus' label='Google+ Link' type='text' group='group_links' order='2' />
	<cms:link name='link_upwork' label='upWork Link' type='text' group='group_links' order='3 />
	<cms:link name='link_lnkdin' label='LinkedIn Link' type='text' group='group_links' order='4' />
	
	<!-- Global SEO - Description -->		
	<cms:editable name='meta_description_home' label='Index Meta Description' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='1' />
	<cms:editable name='meta_description_about' label='About Me Meta Description' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='2' />
	<cms:editable name='meta_description_services' label='Services Meta Description' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='3' />
	<cms:editable name='meta_description_testimonials' label='Testimonials Meta Description' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order=4' />
	<cms:editable name='meta_description_blog' label='Blog Meta Description' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='5' />	
	<cms:editable name='meta_description_contact' label='Contact Me Meta Description' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='6' />
	<cms:editable name='meta_description_404' label='Contact Me Meta Description' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='7' />
	
	<!-- Global SEO - Description -->		
	<cms:editable name='keywords_home' label='Index Keywords' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='1' />
	<cms:editable name='keywords_about' label='About Me Keywords' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='2' />
	<cms:editable name='keywords_services' label='Services Keywords' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='3' />
	<cms:editable name='keywords_testimonials' label='Testimonials Keywords' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order=4' />
	<cms:editable name='keywords_blog' label='Blog Keywords' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='5' />	
	<cms:editable name='keywords_contact' label='Contact Me Keywords' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='6' />
	<cms:editable name='keywords_404' label='Contact Me Keywords' desc='Used by search engines' required='1' type='textarea' height='75' group='group_seo' order='7' />
	
	<!-- Global Miscellaneous -->	
	<cms:editable name='maxyears' label='Maximum Year' type='text' group='group_data' order='1' />
	<cms:editable name='cache_css' label='CSS Cache Buster' desc='Force browsers to request updated files' required='1' validator='alpha_num' type='text' group='group_miscellaneous' order='1' >1</cms:editable>
	
	<!-- Global Names & Links of Pages -->	
	<cms:editable name='home_name' label='Home Name' type='text' group='group_pages' order='1' />
	<cms:link name='home_link' label='Home Link' type='text' group='group_pages' order='2' />
	<cms:editable name='about_name' label='About Name' type='text' group='group_pages' order='3' />
	<cms:link name='about_link' label='About Link' type='text' group='group_pages' order='4' />
	<cms:editable name='services_name' label='Services Name' type='text' group='group_pages' order='5' />
	<cms:link name='services_link' label='Services Link' type='text' group='group_pages' order='6' />
	<cms:editable name='testimonials_name' label='Testimonials Link' type='text' group='group_pages' order='7' />	
	<cms:link name='testimonials_link' label='Testimonials Name' type='text' group='group_pages' order='8' />	
	<cms:editable name='blog_name' label='Blog Name' type='text' group='group_pages' order='9' />	
	<cms:link name='blog_link' label='Blog Link' type='text' group='group_pages' order='10' />	
	<cms:editable name='contact_name' label='Contact Name' type='text' group='group_pages' order='11' />
	<cms:link name='contact_link' label='Contact Link' type='text' group='group_pages' order='12' />
	
	

</cms:template>
<?php COUCH::invoke(); ?>