<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Prezenty - Maja i Jędrek'/>
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		<@header.header 'reception' content.logged />


        <section id="gifts" class="wedding reception">

            <div style="margin-top: 100px;margin-bottom: 50px;">
                <h1 class="wow fadeInDown">Lista prezentów</h1>

                <div class="container">
                <#list content.gifts.gifts as gift>
                    <div class="row gift-list">
                        <div id="${gift.id}" class="col-sm-12 bg wow <#if gift?index%2 ==0>bg-even fadeInRight<#else>bg-odd fadeInLeft</#if> margined-side">
                            <div class="col-sm-4 col-md-3 gift-title">
                                ${gift.name}
                            </div>
                            <div class="col-sm-8 col-md-9 gift-descr">
                                ${gift.description}<br/>
                                <#if gift.link?has_content> <a href="${gift.link}" target="_blank"><u>Przykład tutaj</u></a> </#if>
                            </div>
                            <#if gift.reserved>
                                <div class="gift-reserved">ZAREZERWOWANE</div>
                            </#if>
                        </div>
                    </div>
                <#else>
                    <div class="wow fadeInUp">
                        <h2>Jeszcze nic tu nie ma, ale zajrzyj niedługo, pilnie pracujemy nad wypełnieniem tej listy!</h2>
                    </div>
                </#list>
                </div>

            </div>
        </section>




        <@footer.footer />

    </body>
</html>