<?php require_once( 'update/cms.php' ); ?>
<cms:template title='Jamie Reid RSS' hidden='1' order='6' /><cms:content_type 'application/rss+xml' /><cms:concat '<' '?xml version="1.0" encoding="' k_site_charset '"?' '>' />
<rss version="2.0" xmlns:content="http://purl.org/rss/1.0/modules/content/">
	<channel>
		<title><cms:set blogname=site name 'global'/></title>
		<link><cms:show k_site_link /></link>
		<description><cms:get_custom_field 'meta_description_blog' masterpage='globals.php' /></description>
		<language>en-us</language>
		<pubDate><cms:date format='D, d M Y H:i:s' gmt='1'/> GMT</pubDate>
		<cms:pages masterpage='index.php'>
			<item>
				<title><cms:show k_page_title /></title>
				<link><cms:show k_page_link /></link>
				<content:encoded><![CDATA[<cms:if blog_picture_thumbnail ><a href="<cms:show k_page_link />"<cms:if blog_picture_caption > title="<cms:show blog_picture_caption />"</cms:if>><img src="<cms:show blog_picture_thumbnail />"<cms:if blog_picture_caption > alt="<cms:show blog_picture_caption />"</cms:if>></a></cms:if>
				<p><cms:show blog_summary /> <a href="<cms:show k_page_link />">Read More</a></p>]]></content:encoded>
				<pubDate><cms:date k_page_date format='D, d M Y H:i:s' gmt='1'/> GMT</pubDate>
				<guid><cms:show k_page_link /></guid>
			</item>
		</cms:pages>
	</channel>
</rss>
<?php COUCH::invoke(); ?>