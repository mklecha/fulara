<#macro navbar>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">Panel administracyjny</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="nav-li"><a href="./">Powrót do strony głównej</a></li>
                <li class="nav-li active" id="nav-gift"><a href="javascript:showTab('gift');">Prezenty</a></li>
                <li class="nav-li" id="nav-invitation"><a href="javascript:showTab('invitation');">Zaproszenia</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="logOut.html">Wyloguj</a></li>
            </ul>
        </div>
    </div>
</nav>
</#macro>

<#macro gifts gifts>
    <div class="container">
        <div>prezenty</div>
        <#list gifts as gift>
            <div>
                ${gift.id} - ${gift.name} <#if gift.reserved>RESERVED</#if>
                <button onclick="changeReservation(${gift.id});">Zmień </button>
            </div>
        </#list>
    </div>
</#macro>

<#macro invitations invitations>
    <div class="container">
        zaproszenia
        <a >Dodaj zaproszenie</a>
    </div>
</#macro>