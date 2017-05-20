<#import 'head.ftl' as head/>
<#import 'footer.ftl' as footer/>

<!DOCTYPE html>
<html lang="pl">
	<@head.head/>
	<body>
		<@navbar />

		<div class="tab" id="gift">
			<div class="container">
				prezenty
			</div>
		</div>
		<div class="tab" id="invitation" hidden>
			<div class="container">
				zaproszenia
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
				<a class="navbar-brand" href="javascript:showTab('gift');">Panel administracyjny</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="nav-li active" id="nav-gift"><a href="javascript:showTab('gift');">Prezenty</a></li>
					<li class="nav-li" id="nav-invitation"><a href="javascript:showTab('invitation');">Zaproszenia</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="javascript:logOut();">Wyloguj</a></li>
				</ul>
			</div>
		</div>
	</nav>
</#macro>