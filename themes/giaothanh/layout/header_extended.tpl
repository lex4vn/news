	<noscript>
		<div class="alert alert-danger">{LANG.nojs}</div>
	</noscript>
    <div class="body-bg">
	<div class="wraper">
		<header>
			<div class="container">
				<div id="header" class="row">
				    <div class="logo">
                        <!-- BEGIN: image -->
                        <a title="{SITE_NAME}" href="{THEME_SITE_HREF}"><img src="{LOGO_SRC}" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" alt="{SITE_NAME}" /></a>
                        <!-- END: image -->
                        <!-- BEGIN: swf -->
                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" >
                   	        <param name="wmode" value="transparent" />
                           	<param name="movie" value="{LOGO_SRC}" />
                           	<param name="quality" value="high" />
                           	<param name="menu" value="false" />
                           	<param name="seamlesstabbing" value="false" />
                           	<param name="allowscriptaccess" value="samedomain" />
                           	<param name="loop" value="true" />
                           	<!--[if !IE]> <-->
                           	<object type="application/x-shockwave-flash" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" data="{LOGO_SRC}" >
                                <param name="wmode" value="transparent" />
                                <param name="pluginurl" value="http://www.adobe.com/go/getflashplayer" />
                                <param name="loop" value="true" />
                                <param name="quality" value="high" />
                                <param name="menu" value="false" />
                                <param name="seamlesstabbing" value="false" />
                                <param name="allowscriptaccess" value="samedomain" />
                       	    </object>
                            <!--> <![endif]-->
                        </object>
                        <!-- END: swf -->
                        <h1>{SITE_NAME}</h1>
                        <h2>{SITE_DESCRIPTION}</h2>
                    </div>
				</div>
			</div>
		</header>
		<section>
			<div class="container" id="body">
                <nav class="third-nav">
					<div class="row headtop">
						<div class="col-xs-6 col-sm-6 col-md-6">
						<!-- BEGIN: currenttime --><span class="current-time">{NV_CURRENTTIME}</span><!-- END: currenttime -->
						</div>
						<div class="col-xs-18 col-sm-18 col-md-18">
						[MENU_SITE]
						</div>
                    </div>
                </nav>
                [THEME_ERROR_INFO]