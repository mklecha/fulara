<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">Prezenty</div>

        <table class="table">
            <tr>
                <th width="5%">Id</th>
                <th width="25%">Nazwa</th>
                <th width="45%">Opis</th>
                <th width="10%"></th>
                <th width="15%"></th>
            </tr>

        <#list content.gifts as g>
            <tr <#if g.reserved>class="reserved"</#if>>
                <td>${g.id}</td>
                <td>${g.name}</td>
                <td>${g.description}</td>
                <td>
                    <#if !g.reserved>
                        <button class="btn btn-primary" onclick="changeReservation(${g.id});">Zarezerwuj</button></td>
                    <#else>
                        <button class="btn btn-default" onclick="changeReservation(${g.id});">Odrezerwuj</button></td>
                    </#if>
                <td>
                    <button class="btn btn-danger phase1" onclick="phase2();">Usuń</button>

                    <button class="btn btn-warning phase2" style="display: none;" onclick="phase1();">Wróć
                    </button>
                    <button class="btn btn-danger phase2" style="display: none;" onclick="deleteGift(${g.id});">
                        Usuń
                    </button>
                </td>
            </tr>
        </#list>
        </table>
    </div>
</div>
