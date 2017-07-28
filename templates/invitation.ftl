<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">

	<#if content.plural>
        <#assign word ='Was'>
        <#assign word2 ='Wpadajcie'>
    <#else>
        <#assign word ='Cię'>
        <#assign word2 ='Wpadaj'>
	</#if>
    <@head.head 'Zaproszenie - ${content.name}'/>

    <body>
        <!-- Intro Header -->
        <header class="wedding">
            <div class="intro-body">
                <div class="container">
                    <div class="row margined">
                        <div class="white-background">
                            <h1 class="brand-heading">${content.message}</h1>
                            <p class="intro-text">
                                Zapraszamy ${word} serdecznie! ${word2} koniecznie
                            </p>
                            <p>
                                <a href="./" class="btninv"><i class="fa fa-info-circle"></i> Więcej informacji</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </header>

    <@footer.footer />

    </body>
</html>

