
<!-- BEGIN: main --><marquee>
<ul class="list-top-line">
	<!-- BEGIN: newloop -->
	<li class="top-line">
		<a {TITLE} class="show" href="{blocknews.link}" data-content="{blocknews.hometext}" data-img="{blocknews.imgurl}" data-rel="block_news_tooltip">{blocknews.title}</a>
	</li>
	<!-- END: newloop -->
</ul>
<!-- BEGIN: tooltip -->
<script type="text/javascript">
$(document).ready(function() {$("[data-rel='block_news_tooltip'][data-content!='']").tooltip({
	placement: "{TOOLTIP_POSITION}",
	html: true,
	title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
});});
</script>
<!-- END: tooltip --></marquee>
<!-- END: main -->
