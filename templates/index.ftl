<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="en">
	<@head.head 'Maja i Jędrek - strona ślubna'/>
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		<@header.header 'main' content.logged />

        <header class="intro">
            <div class="intro-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <h1 class="brand-heading">CZEŚĆ, BIEŻEMY ŚLUB</h1>
                            <p class="intro-text">
                                Maja i Jędrek
                            </p>
                            <a href="#about" class="btn btn-circle page-scroll">
                                <i class="fa fa-angle-double-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- About Section -->
        <section id="about">
            <div class="container content-section text-center">
                <div class="row col-xs-10 col-xs-offset-1">
                    <h2>Będziemy mężem i żoną, <br/>poważna sprawa.</h2>
                    <div class="col-lg-8 col-lg-offset-2">
                        <p>
                            Ze względu na powagę sytuacji mamy nawet stronę internetową!<br/> Mamy nadzieję, że będzie pomocna i Wam się spodoba.
                        </p>
                        <p>
                            Buziaki od M i ściski od F
                        </p>
                        <p>
                            <a href="#" class="btnghost"><i class="fa fa-info-circle"></i> Więcej informacji</a>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <@footer.footer />

    </body>
</html>