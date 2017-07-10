<div class="container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">Zaproszenia</div>

        <!-- Table -->
        <table class="table">
        <#list content.invitations as i>
            <tr>
                <td>${i.key}</td>
            </tr>
        </#list>
        </table>
    </div>
</div>
