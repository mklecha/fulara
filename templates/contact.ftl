<#import '/common/head.ftl' as head/>
<#import '/common/header.ftl' as header/>
<#import '/common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Kontakt - Maja i Jędrek'/>
	<body>
		<@header.header 'contact' content.logged/>


        <!-- Intro Header -->
        <header class="wedding">
            <div class="intro-body">
                <div class="container">
                    <div class="row margined">
                        <div class="white-background wow fadeInUp">
                            <h1 class="brand-heading">KONTAKT</h1>
                            <p class="intro-text">
                                W razie wątpliwości zachęcamy do kontaktu drogą mailową (nasz świadek - <i>Janek</i> - odpowie na wszelkie pytania) lub telefoniczną.
                            </p>
                            <div class="contact">
                                <div class="col-md-6">
                                    <i class="fa fa-phone animated"></i>Numer Mai: <a href="tel:793779060">793 779 060</a>
                                </div>
                                <div class="col-md-6">
                                    <i class="fa fa-phone animated"></i>Numer Jędrka: <a href="tel:695954597">695 954 597</a>
                                </div>
                                <div class="bottom">
                                    <i class="fa fa-envelope"></i>Adres mailowy: <a href="mailto:jedrekimaja@gmail.com">jedrekimaja@gmail.com</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <@footer.footer />

    </body>
</html>