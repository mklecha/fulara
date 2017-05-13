<#import 'head.ftl' as head/>
<#import 'footer.ftl' as footer/>

<!DOCTYPE html>
<html lang="pl">
	<@head.head/>
	<body>
		<@navbar />

		<div class="tab" id="main">
			<div class="container">
				main
			</div>
		</div>
		<div class="tab" id="about" hidden>
			<div class="container">
				about
			</div>
		</div>
		<div class="tab" id="compositions" hidden>
			<div class="container">
				compositions
			</div>
		</div>
		<div class="tab" id="pieces" hidden>
			<div class="container">
				pieces
			</div>
		</div>
		<@footer.footer />
    </body>
</html>


<#macro navbar>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="javascript:showTab('main');">Panel administracyjny</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="nav-li active" id="nav-main"><a href="javascript:showTab('main');">Strona główna</a></li>
					<li class="nav-li" id="nav-about"><a href="javascript:showTab('about');">O mnie</a></li>
					<li class="nav-li" id="nav-compositions"><a href="javascript:showTab('compositions');">Moje kompozycje</a></li>
					<li class="nav-li" id="nav-pieces"><a href="javascript:showTab('pieces');">Utwory</a></li>
					<!--<li class="dropdown">-->
					<!--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>-->
					<!--<ul class="dropdown-menu">-->
					<!--<li><a href="#">Action</a></li>-->
					<!--<li><a href="#">Another action</a></li>-->
					<!--<li><a href="#">Something else here</a></li>-->
					<!--<li role="separator" class="divider"></li>-->
					<!--<li><a href="#">Separated link</a></li>-->
					<!--<li role="separator" class="divider"></li>-->
					<!--<li><a href="#">One more separated link</a></li>-->
					<!--</ul>-->
					<!--</li>-->
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="javascript:logOut();">Wyloguj</a></li>
				</ul>
			</div>
		</div>
	</nav>
</#macro>