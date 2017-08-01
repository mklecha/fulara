<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl" xmlns="http://www.w3.org/1999/html">
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
                                Wesele rozpocznie się o godzinie 18.30 w przestrzeni "Marzycieli i Rzemieślników" znajdującej się na III piętrze Domu Towarowego Bracia Jabłkowscy, przy ul. Brackiej 25 w&nbsp;Warszawie.
                            </p>
                            <p class="intro-text">
                                Plan dojazdu znajduje się <a href="#reception-map" class="page-scroll">poniżej.</a>
                            </p>
                            <p>
                                Aby rozwiązać odwieczny problem weselnych strojów, zachęcamy do angażownia się w obowiązującą konwencję: <b><i>złoto</i></b> lub <b><i>wąsy</i></b>. Planujemy wyłonić i nagrodzić osoby w najzłotszych strojach i z najlepszym wąsem
                            </p>
                            <p class="intro-text">
                                Prosimy o potwierdzenie przybycia do 10 sierpnia, drogą mailową - na adres <a href="mailto:jedrekimaja@gmail.com">jedrekimaja@gmail.com</a>.
                            </p>
                            <a href="#reception-text" class="btnghost page-scroll">
                                <i class="fa fa-angle-double-down"></i>&nbsp;Prezenty&nbsp;<i class="fa fa-angle-double-down"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="reception-text" class="map">
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
                <div id="reception-map" class="wow fadeInRight">
                    <h2>Mapa dojazdu do sali weselnej</h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d863.9483614076539!2d21.014412032187852!3d52.23221255107104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471eccf46e60f2af%3A0x32a4ecd77712044d!2sMarzyciele+i+Rzemie%C5%9Blnicy.+Dom+Innowacji+Spo%C5%82ecznych.!5e0!3m2!1spl!2spl!4v1501245283580"
                            frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="container reception-text margined-side wow fadeInLeft">
                    <h2>Informacja</h2>
                    <p style="font-weight: bold">
                        Informujemy, że spod kościoła nie będzie zorganizowanego dojazdu do sali weselnej. Oba miejsca są położone w okolicy niesprzyjającej parkowaniu samochodu, dzieli je jednak niewielka odległość więc zachęcamy do skorzystania z komunikacji miejskiej, taksówek, rowerów lub przy dobrej pogodzie z własnych nóg ;)
                    </p>
                </div>
            </div>
        </section>

        <@footer.footer />

    </body>
</html>