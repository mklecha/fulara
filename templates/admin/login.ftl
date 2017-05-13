<#import 'head.ftl' as head/>
<#import 'footer.ftl' as footer/>

<!DOCTYPE html>
<html lang="pl">
	<@head.head/>
	<body>
        <div class="wrapper">
            <form class="form-signin" method="POST" action="login.html">
                <h2 class="form-signin-heading">Zaloguj się</h2>
                <input type="text" class="form-control" name="login" placeholder="Login" required="" autofocus="" />
                <input id="password-presend" type="password" class="form-control" placeholder="Hasło" required=""/>
                <input id="password" type="text" name="password" hidden/>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Zaloguj</button>
            </form>
        </div>

        <#if content.message??>
            <div class="alert-wrapper">
            <div class="alert alert-danger">
                <strong>Błąd!</strong> ${content.message}
            </div>
            </div>
        </#if>
		<@footer.footer />

    </body>
</html>