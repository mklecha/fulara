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
                        <div class="col-md-8 col-md-offset-2 white-background">
                            <h1 class="brand-heading">ŚLUB</h1>
                            <p class="intro-text">
                                Serdecznie zapraszamy na <b>Mszę Świętą</b>,<br/>
                                która odbędzie się 2 września o godzinie 15 <br/>
                                w kościele św. Marcina przy ul. Piwnej 9/11 w Warszawie.<br/>
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
                <div class="col-md-8">
                    <h2>Mapa dojazdu do kościoła</h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2442.7300267664273!2d21.010306715797377!3d52.24828717976362!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471ecc65f8125e1f%3A0xf5b6b53bcc09c38a!2sPiwna+9%2C+00-265+Warszawa!5e0!3m2!1spl!2spl!4v1501164645838"
                            frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="col-md-4 wedding-gifts">
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

