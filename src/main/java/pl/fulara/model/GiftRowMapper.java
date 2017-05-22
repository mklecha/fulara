package pl.fulara.model;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GiftRowMapper implements RowMapper<Gift> {
    @Override
    public Gift mapRow(ResultSet resultSet, int i) throws SQLException {
        return new Gift(resultSet.getInt("id"), resultSet.getString("name"),
                resultSet.getString("descr"), resultSet.getString("link"),
                resultSet.getString("photo"), resultSet.getBoolean("reserved"));
    }
}
