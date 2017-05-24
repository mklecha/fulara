<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="en">
	<@head.head 'Zaproszenie - ${content.name}'/>
	<#if content.plural>
        <#assign word ='Was'>
    <#else >
        <#assign word ='Cię'>
	</#if>
    <body>


        <div style="margin-top: 100px;">
            <h1>${content.message}</h1>
            <div>
                Zapraszamy ${word}
            </div>
        </div>
        <a href="./"><button>Przejdź do strony głównej</button></a>
		<@footer.js />

    </body>
</html>