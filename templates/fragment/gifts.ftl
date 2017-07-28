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
                    <button class="btn btn-danger phase1 p1-${g.id}" onclick="phase2(${g.id});">Usuń</button>

                    <button class="btn btn-warning phase2 p2-${g.id}" style="display: none;" onclick="phase1(${g.id});">Wróć
                    </button>
                    <button class="btn btn-danger phase2 p2-${g.id}" style="display: none;" onclick="deleteGift(${g.id});">
                        Usuń
                    </button>
                </td>
            </tr>
        </#list>
        </table>
        <form class="form-group col-md-8 col-md-offset-2" method="get" action="manage-gifts.html" id="add-gift-form">
            <input type="hidden" name="action" value="add"/>
            <div class="form-group">
                <label for="key">Nazwa:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="description">Opis:</label>
                <textarea class="form-control" id="description" name="description" required></textarea>
            </div>
            <div class="form-group">
                <label for="link">Link:</label>
                <p class="link-error">
                    W linku musi być nazwa protokołu: <i>http://</i> lub <i>https://</i><br/>
                    Poprawny link to na przykład: <i>http://www.google.pl</i>, a nie <i>www.google.pl</i>
                </p>
                <input type="text" class="form-control" id="link" name="link"/>
            </div>
            <button type="submit" class="btn btn-default">Dodaj</button>
        </form>
    </div>
</div>
