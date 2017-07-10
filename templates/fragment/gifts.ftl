<div class="container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">Prezenty</div>

        <!-- Table -->
        <table class="table">
        <#list content.gifts as g>
            <tr>
                <td>${g.id}</td>
            </tr>
        </#list>
        </table>
    </div>
</div>
