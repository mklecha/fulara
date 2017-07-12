<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="en">
	<@head.head 'Prezenty - Maja i Jędrek'/>
	<body>
		<@header.header 'gifts' content.logged />
        <div style="margin-top: 100px;">
            <h1>Lista prezentów</h1>

            <div class="container">
            <#list  content.gifts.gifts as gift>
                <div class="row gift-list">
                    <div id="${gift.id}" class="col-sm-12 bg animated <#if gift?index%2 ==0>bg-even fadeInRight<#else>bg-odd fadeInLeft</#if>">
                        <div class="col-sm-2" >
                            <center><img src="static/img/gifts/${gift.photo}" alt=""/></center>
                        </div>
                        <div class="col-sm-8">
                            <p class="gift-title">${gift.name}</p>
                            <p class="gift-descr">${gift.description}</p>
                            <#if gift.link?has_content> <a href="${gift.link}" target="_blank"><u>Przykład tutaj</u></a> </#if>
                        </div>
                        <#if gift.reserved>
                            <div class="gift-reserved">ZAREZERWOWANE</div>
                        </#if>
                    </div>
                </div>
            </#list>
            </div>

        </div>
        <@footer.footer />

    </body>
</html>