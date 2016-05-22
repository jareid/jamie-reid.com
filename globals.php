<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Global Settings' executable='0' order='7' >
	<!-- Global Blog -->
	<cms:editable name='blogname' 						label='Blog Name' 	                    type='text'        group="blog"         order='1' />
	<cms:editable name='blog_categories' 				label='Blog Categories' 	                    type='text'        group="blog"         order='2' />
	<cms:editable name='blog_latest' 					label='Blog Latest' 	                    type='text'        group="blog"         order='3' />
	<cms:editable name='blog_arhives' 					label='Blog Archives' 	                    type='text'        group="blog"         order='4' />
	
	<!-- Global Data -->
	<cms:editable name='fullname' 						label='Full Name' 					    type='text'        group='group_data'   order='1' />
	<cms:editable name='shortname' 						label='Short Name' 					    type='text'        group='group_data'   order='2' />
	<cms:editable name='namejob' 						label='Name And Job' 				    type='text'        group='group_data'   order='2' />
	<cms:editable name='jobtitle' 						label='Job Title' 					    type='text'        group='group_data'   order='3' />
	<cms:editable name='email_one' 						label='eMail One' 					    type='text'        group='group_data'   order='4' />
	<cms:editable name='email_two' 						label='eMail Two' 					    type='text'        group='group_data'   order='5' />
	<cms:editable name='skype' 							label='Skype' 						    type='text'        group='group_data'   order='6' />
	
	<!-- Global SEO - Description -->		
	<cms:editable name='meta_description_home' 			label='Index Meta Description'  		type='textarea'  group='group_seo'      order='1' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='meta_description_about' 		label='About Me Meta Description'   	type='textarea'  group='group_seo'      order='2' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='meta_description_services' 		label='Services Meta Description'   	type='textarea'  group='group_seo'      order='3' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='meta_description_testimonials' 	label='Testimonials Meta Description'   type='textarea'  group='group_seo'      order='4' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='meta_description_blog' 			label='Blog Meta Description'   		type='textarea'  group='group_seo'      order='5' desc='Used by search engines' required='1' height='40' maxlength='160' />	
	<cms:editable name='meta_description_contact' 		label='Contact Me Meta Description'   	type='textarea'  group='group_seo'      order='6' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='meta_description_404' 			label='Contact Me Meta Description'   	type='textarea'  group='group_seo'      order='7' desc='Used by search engines' required='1' height='40' maxlength='160' />
	
	<!-- Global SEO - Description -->		
	<cms:editable name='keywords_home' 					label='Index Keywords'   				type='textarea'  group='group_seo'      order='1' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='keywords_about' 				label='About Me Keywords'   			type='textarea'  group='group_seo'      order='2' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='keywords_services' 				label='Services Keywords'   			type='textarea'  group='group_seo'      order='3' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='keywords_testimonials' 			label='Testimonials Keywords'  			type='textarea'  group='group_seo'      order='4' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='keywords_blog'					label='Blog Keywords'   				type='textarea'  group='group_seo'      order='5' desc='Used by search engines' required='1' height='40' maxlength='160' />	
	<cms:editable name='keywords_contact'				label='Contact Me Keywords'   			type='textarea'  group='group_seo'      order='6' desc='Used by search engines' required='1' height='40' maxlength='160' />
	<cms:editable name='keywords_404' 					label='Contact Me Keywords'   			type='textarea'  group='group_seo'      order='7' desc='Used by search engines' required='1' height='40' maxlength='160' />
	
	<!-- Global Miscellaneous -->	
	<cms:editable name='maxyears' 						label='Maximum Year' 					type='text'      group='group_misc'     order='1' />
	<cms:editable name='copyright' 						label='Copyright Notice' 				type='text'      group='group_misc'     order='2' />
	<cms:editable name='cache_css' 						label='CSS Cache Buster'  				type='text'      group='group_misc'     order='3' desc='Force browsers to request updated files'  validator='alpha_num'/>
	
	
	<!-- Global Names & Links of Pages -->	
	<cms:editable name='home_name' 						label='Home Name'                       type='text'     group='group_pages'     order='1' />
	<cms:editable name='home_link' 						label='Home Link'                       type='text'     group='group_pages'     order='2' />
	<cms:editable name='about_name' 					label='About Name'                      type='text'     group='group_pages'     order='3' />
	<cms:editable name='about_link' 					label='About Link'                      type='text'     group='group_pages'     order='4' />
	<cms:editable name='services_name' 					label='Services Name'                   type='text'     group='group_pages'     order='5' />
	<cms:editable name='services_link' 					label='Services Link'                   type='text'     group='group_pages'     order='6' />
	<cms:editable name='testimonials_name' 				label='Testimonials Link'               type='text'     group='group_pages'     order='7' />	
	<cms:editable name='testimonials_link' 				label='Testimonials Name'               type='text'     group='group_pages'     order='8' />	
	<cms:editable name='blog_name' 						label='Blog Name'                       type='text'     group='group_pages'     order='9' />	
	<cms:editable name='blog_link' 						label='Blog Link'                       type='text'     group='group_pages'     order='10' />	
	<cms:editable name='contact_name' 					label='Contact Name'                    type='text'     group='group_pages'     order='11' />
	<cms:editable name='contact_link' 					label='Contact Link'                    type='text'     group='group_pages'     order='12' />
	
	<!-- Global Links -->
	<cms:editable name='link_fbook'						label='Facebook Link'	                type='text'     group='group_links'     order='1' />
	<cms:editable name='link_gplus'						label='Google+ Link' 	                type='text'     group='group_links'     order='2' />
	<cms:editable name='link_upwork'					label='upWork Link'		                type='text'     group='group_links'     order='3' />
	<cms:editable name='link_lnkdin'					label='LinkedIn Link' 	                type='text'     group='group_links'     order='4' />
    <cms:editable name='link_github'					label='GitHub Link' 	                type='text'     group='group_links'     order='5' />

</cms:template>
<?php COUCH::invoke(); ?>