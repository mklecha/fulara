<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Informacje - Maja i Jędrek'/>
	<body>
		<@header.header 'info' content.logged />


        <!-- Intro Header -->
        <header class="wedding" style="">
            <div class="intro-body">
                <div class="container">
                    <div class="row" style="margin-top: 150px;">
                        <div class="col-md-8 col-md-offset-2" style="background: rgba(255,255,255,0.1);">
                            <h1 class="brand-heading">Ślub</h1>
                            <p class="intro-text">
                                Serdecznie zapraszamy na <b>Mszę Świętą</b>,<br/>
                                która odbędzie się 2 września o godzinie 15 <br/>
                                w kościele św. Marcina przy ul. Piwnej 9/11 w Warszawie.<br/>
                                Mapa znajduje się <a href="#map" class="page-scroll">tutaj.</a><br/><br/>
                                Będziemy wdzięczni za modlitwę w naszej intencji.

                            </p>
                            <a href="#map" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <section id="contact">
            <div class="container content-section text-center">
                <div class="row">
                   <div id="map" style="height: 400px; width: 100%;"></div>
                </div>
            </div>
        </section>
        <section id="contact">
            <div class="container content-section text-center">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <h2>A jeżeli...</h2>
                        <p>
                            A jeżeli komuś przyjdzie ochota czymś nas obdarować, to miło nam będzie zamiast kwiatów otrzymać prezent zawarty w butelce, kopercie lub okładce:)
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEuAg2YGuwUJIrFCWo6Ct8T_dZF_H05xM&callback=initMap"></script>

        <script>
            function initMap() {
                var uluru = {lat: -25.363, lng: 131.044};
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 4,
                    center: uluru
                });
                var marker = new google.maps.Marker({
                    position: uluru,
                    map: map
                });
            }
        </script>
        <@footer.footer />
    </body>
</html>

