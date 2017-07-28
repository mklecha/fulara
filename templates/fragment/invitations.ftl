<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">Zaproszenia</div>

        <table class="table">
            <tr>
                <th width="15%">Klucz</th>
                <th width="25%">Adresat</th>
                <th width="40%">Link</th>
                <th width="20%"></th>
            </tr>

            <#list content.invitations as i>
                <tr>
                    <td>${i.key}</td>
                    <td>${i.name}</td>
                    <td><a href="http://localhost:8080/fulary/${i.key}.inv">http://www.fulary.pl/${i.key}.inv</a>
                    </td>
                    <td>
                        <button class="btn btn-danger phase1 p1-${i.key}" onclick="phase2('${i.key}');">Usuń
                        </button>

                        <button class="btn btn-warning phase2 p2-${i.key}" style="display: none;" onclick="phase1('${i.key}');">Wróć
                        </button>
                        <button class="btn btn-danger phase2 p2-${i.key}" style="display: none;" onclick="deleteInvitation('${i.key}');">
                            Usuń
                        </button>
                    </td>
                </tr>
            </#list>
        </table>
        <form class="form-group col-md-8 col-md-offset-2" method="get" action="manage-invitations.html" id="add-invitation-form">
            <input type="hidden" name="action" value="add"/>
            <div class="form-group">
                <label for="key">Klucz:</label>
                <input type="text" class="form-control" id="key" name="key" required>
            </div>
            <div class="form-group">
                <label for="name">Adresat:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="message">Nagłówek:</label>
                <input type="text" class="form-control" id="message" name="message" required>
            </div>
            <input type="hidden" name="plural" id="plural-off" value="off" />
            <div class="checkbox">
                <label><input type="checkbox" name="plural" id="plural">Zaproszenie w do wielu osób (forma 'Was' zamiast 'Ciebie')</label>
            </div>
            <button type="submit" class="btn btn-default">Zapisz</button>
        </form>
    </div>
</div>
