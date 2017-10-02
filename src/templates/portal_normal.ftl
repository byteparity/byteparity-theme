<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<!-- header section -->
<section class="banner" role="banner">
  <header id="header">
    <div class="header-content clearfix"> <a class="logo" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">${site_name}</a>
      <nav class="navigation" role="navigation">
        <ul class="primary-nav">
          <li><a href="${site_default_url}/#intro">About</a></li>
          <li><a href="${site_default_url}/#services">services</a></li>
          <li><a href="${site_default_url}/#works">Works</a></li>
          <li><a href="${site_default_url}/#teams">Our Team</a></li>
          <li><a href="${site_default_url}/#testimonials">Testimonials</a></li>
          <li><a href="${site_default_url}/#contact">Contact</a></li>
		  <#if !is_signed_in>
			<li><a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a></li>
		</#if>
        </ul>
      </nav>
      <a href="#" class="nav-toggle">Menu<span></span></a> </div>
  </header>
  <!-- banner text -->
  <div class="container">
    <div class="col-md-10 col-md-offset-1">
      <div class="banner-text text-center">
        <h1><#list banner_title?values as field>
				${field}
			</#list></h1>
        <p>
			<#list banner_detail_text?values as field>
				${field}
			</#list>
		</p>
        <a href="${banner_link}" class="btn btn-success">Find out more</a> </div>
      <!-- banner text --> 
    </div>
  </div>
</section>
<!-- header section --> 
<#if page.friendlyURL = "/home">
<div class="homepage">
	<#if selectable>
		<@liferay_util["include"] page=content_include />
	<#else>
		${portletDisplay.recycle()}

		${portletDisplay.setTitle(the_title)}

		<@liferay_theme["wrap-portlet"] page="portlet.ftl">
			<@liferay_util["include"] page=content_include />
		</@>
	</#if>
</div>
<#else>
<div class="container-fluid" id="wrapper">
	<section id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<nav id="breadcrumbs">
			<@liferay.breadcrumbs />
		</nav>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>
</div>
</#if>
<!-- Footer section -->
<footer class="footer" id="footer" role="contentinfo">
<div class="footer-top section">
	<div class="container">
	<div class="row">
		<div class="footer-col col-md-6">
		<h5>Our Office Location</h5>
		<p>C/605-B Ganesh Meridian,<br>
			Opp. Gujarat High Court, S. G. Highway,<br>
			Ahmedabad, Gujarat, INDIA - 380 060<br>
			+91 76000 88440 / +91 98989 00896<br>
			hello@byteparity.com</p>
		<p>Made with <i class="icon-heart"></i> in India & by <a href="${company_url}" rel="external">${site_name}</a></p>
		</div>
		<div class="footer-col col-md-3">
		<h5>Services We Offer</h5>
		<p>
		<ul>
			<li><a href="#">Digital Strategy</a></li>
			<li><a href="#">Websites</a></li>
			<li><a href="#">Videography</a></li>
			<li><a href="#">Social Media</a></li>
			<li><a href="#">User Experience</a></li>
		</ul>
		</p>
		</div>
		<div class="footer-col col-md-3">
		<h5>Share with Love</h5>
		<ul class="footer-share">
			<li><a href="https://www.facebook.com/byteparity"><i class="icon-facebook"></i></a></li>
			<li><a href="https://twitter.com/byteparity"><i class="icon-twitter"></i></a></li>
			<li><a href="https://www.linkedin.com/company/byteparity-technologies"><i class="icon-linkedin"></i></a></li>
			<li><a href="https://plus.google.com/+Byteparity"><i class="icon-google-plus"></i></a></li>
		</ul>
		</div>
	</div>
	</div>
</div>
<!-- footer top --> 

</footer>
<!-- Footer section --> 


<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script src="${javascript_folder}/jquery.flexslider-min.js"></script> 
<script src="${javascript_folder}/jquery.fancybox.pack.js"></script> 
<script src="${javascript_folder}/retina.min.js"></script>
<!-- inject:js -->
<!-- endinject -->

</body>

</html>