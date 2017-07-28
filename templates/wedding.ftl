<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Informacje - Maja i Jędrek'/>
	<body>
		<@header.header 'info' content.logged />


        <!-- Intro Header -->
        <header class="wedding">
            <div class="intro-body">
                <div class="container">
                    <div class="row margined">
                        <div class="col-md-8 col-md-offset-2 white-background wow fadeInDown">
                            <h1 class="brand-heading">ŚLUB</h1>
                            <p class="intro-text">
                                Serdecznie zapraszamy na <b>Mszę Świętą</b>,<br/>
                                która odbędzie się 2 września 2017 r. o godzinie 15.00 <br/>
                                w kościele pw. św. Marcina przy ul. Piwnej 9/11 w&nbsp;Warszawie.<br/>
                                Mapa znajduje się <a href="#wedding-map" class="page-scroll">poniżej.</a><br/><br/>
                                Będziemy wdzięczni za modlitwę w naszej intencji.

                            </p>
                            <a href="#wedding-map" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="wedding-map" class="map">
            <div class="row text-center">
                <div class="col-md-8 wow fadeInLeft">
                    <h2>Mapa dojazdu do kościoła</h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d685.4676800629614!2d21.012700950932164!3d52.24830352534142!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x974850d7c6641593!2zS2_Fm2Npw7PFgiBwdy4gxZp3LiBNYXJjaW5h!5e0!3m2!1spl!2spl!4v1501244705841"
                            frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="col-md-4 wedding-gifts margined-side wow fadeInRight">
                    <h2>A jeżeli...</h2>
                    <p>
                        A jeżeli komuś przyjdzie ochota czymś nas obdarować, to miło nam będzie zamiast kwiatów otrzymać prezent zawarty w butelce, kopercie lub okładce:)
                    </p>
                </div>
            </div>
        </section>

        <@footer.footer />
    </body>
</html>

