<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="row">
	[HEADER]
</div>
<div class="row">
    <div class="col-sm-12 col-md-16 col-sm-push-8 col-md-push-4 main-content">
	
		<!-- BEGIN: breadcrumbs -->
		<div class="row-breadcrumbs">
	<ul class="breadcrumbs">
		<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}"><span itemprop="title">{LANG.Home}</span></a></li>
		<!-- BEGIN: loop --><li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}"><span class="txt" itemprop="title">{BREADCRUMBS.title}</span></a></li><!-- END: loop -->
	</ul>
	</div>
	<!-- END: breadcrumbs -->
        [TOP]
        {MODULE_CONTENT}
        [BOTTOM]
    </div>
    <div class="col-sm-4 col-md-4 col-sm-push-4 col-md-push-4">
			<div class="panel panel-primary">
			<div class="panel-heading">
				Tìm kiếm
			</div>
			<div class="headerSearch">
			<div class="input-group-search">
				<input type="text" class="form-control-search" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}...">
				<div class="input-group-btn-search">
				<button type="button" class="btn-search" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><em class="fa fa-search fa-md">Tìm kiếm</em></button></div>
			</div>
		</div></div>
        [RIGHT]
    </div>
	<div class="col-sm-4 col-md-4 col-sm-pull-18 col-md-pull-20">
		[LEFT]
	</div>
</div>
<div class="row">
	[FOOTER]
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->