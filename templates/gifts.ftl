<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="en">
	<@head.head 'Prezenty - Maja i Jędrek'/>
	<body>
		<@header.header 'gifts'/>
        <#assign showButton = content.logged />


        <div style="margin-top: 100px;">
            <h1>Lista prezentów</h1>
            <#if content.gifts.gifts??>Jest lista</#if>
            <#list content.gifts.gifts as gift>
                <div>
                    ${gift.id}. ${gift.name} - ${gift.photo}
                    <#if showButton>
                        <form method="post">
                            <input type="text" name="id" value="${gift.id}" hidden />
                            <button>
                                <#if !gift.reserved>
                                    Zarezerwuj
                                <#else>
                                    Anuluj rezerwację
                                </#if>
                            </button>
                        </form>
                    </#if>
                </div>
            <#else>
                <div>Lista pusta</div>
            </#list>
        </div>
        <@footer.footer />

    </body>
</html>