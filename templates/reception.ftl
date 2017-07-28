<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Wesele - Maja i Jędrek'/>
	<body>
		<@header.header 'reception' content.logged />

        <!-- Intro Header -->
        <header class="wedding">
            <div class="intro-body">
                <div class="container">
                    <div class="row margined">
                        <div class="col-md-8 col-md-offset-2 white-background wow fadeInDown">
                            <h1 class="brand-heading">WESELE</h1>
                            <p class="intro-text">
                                Wesele rozpocznie się o godzinie 18.30 w przestrzeni “Marzycieli i Rzemieślników" znajdującej się na III piętrze Domu Towarowego Bracia Jabłkowscy, przy ul. Brackiej 25 w Warszawie.
                            </p>
                            <p class="intro-text">
                                Plan dojazdu znajduje się <a href="#reception-map" class="page-scroll">poniżej.</a>
                            </p>
                            <p class="intro-text">
                                Prosimy o potwierdzenie przybycia do 10 sierpnia.
                            </p>
                            <a href="#reception-map" class="btn btn-circle page-scroll">
                                <i class="fa fa-angle-double-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="reception-map" class="map">
            <div class="row text-center">
                <div class="container reception-text margined-side wow fadeInLeft">
                    <h2>A jeżeli...</h2>
                    <p>
                        Dla gości, którzy mają życzenie obdarować nas prezentem, a nie mają na niego pomysłu, przygotowaliśmy <a href="gifts.html">listę prezentów.</a>
                    </p>
                    <p>
                        Gdyby ktoś pragnął zarezerwować którąś spośród wolnych pozycji na tej liście, prosimy zgłosić taką chęć do naszego świadka - <i>Janka</i>. Skontakować się z nim można przez maila: <a href="mailto:jedrekimaja@gmail.com">jedrekimaja@gmail.com</a>
                    </p>
                    <p>
                        Gdyby ktoś z jakichś przyczyn chciał się wycofać z podjętej wcześniej rezerwacji należy również dać znać <i>Jankowi</i>
                    </p>
                    <p class="go-to-gifts">
                        <a href="gifts.html" class="btnghost"><i class="fa fa-gift"></i>Przejdź do listy prezentów</a>
                    </p>
                </div>
                <div class="wow fadeInRight">
                    <h2>Mapa dojazdu na salę weselną</h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2443.6196406673985!2d21.01307731580131!3d52.2321278797607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471eccf46e7d5489%3A0x543bc68b6e7182eb!2sBracka+25%2C+Warszawa!5e0!3m2!1spl!2spl!4v1501172863155"
                            frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
        </section>

        <@footer.footer />

    </body>
</html>