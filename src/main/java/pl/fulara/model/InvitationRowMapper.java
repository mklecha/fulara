package pl.fulara.model;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class InvitationRowMapper implements RowMapper<Invitation> {
    @Override
    public Invitation mapRow(ResultSet resultSet, int i) throws SQLException {
        return new Invitation(resultSet.getString("key"), resultSet.getString("name"),
                resultSet.getString("message"), resultSet.getBoolean("plural"));
    }
}
