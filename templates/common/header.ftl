<!--suppress HtmlUnknownTarget -->
<#macro header active>
	<!-- Navigation -->
	<nav id="tf-menu" class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">Spirit8</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li <#if active == 'main'>class="active"</#if>><a href="./">Home</a></li>
                    <li <#if active == 'info'>class="active"</#if>><a href="info.html">Informacje</a></li>
                    <li <#if active == 'gifts'>class="active"</#if>><a href="gifts.html">Lista prezentów</a></li>
                    <li <#if active == 'contact'>class="active"</#if>><a href="contact.html">Kontakt</a></li>
                    <li id="admin-panel" style="display: none"><a href="admin.html">Panel Administatora</a></li>
                </ul>
			</div>
		</div>
	</nav>
</#macro>