<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="en">
	<@head.head 'Prezenty - Maja i Jędrek'/>
	<body>
		<@header.header 'gifts'/>


        <div style="margin-top: 100px;">
            <h1>Lista prezentów</h1>
            <#if content.gifts??>Jest lista</#if>
            <#if content.gifts?has_content>Jest pusta</#if>
        </div>
        <@footer.footer />

    </body>
</html>