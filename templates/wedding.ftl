<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Informacje - Maja i Jędrek'/>
	<body>
		<@header.header 'info' content.logged />


        <!-- Intro Header -->
        <header class="intro">
            <div class="intro-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h1 class="brand-heading wow fadeInDown">Trochę informacji</h1>
                            <p class="intro-text">
                                Niedługo uzupełnimy
                            </p>
                        <#--<a href="gifts.html" class="btn btn-circle page-scroll">-->
                        <#--<i class="fa fa-angle-double-down animated"></i>-->
                        <#--</a>-->
                        </div>
                    </div>
                </div>
            </div>
        </header>

		<@footer.footer />
    </body>
</html>