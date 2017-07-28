package pl.fulara.model;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRowMapper implements RowMapper<User> {
	@Override
	public User mapRow(ResultSet resultSet, int i) throws SQLException {
		User user = new User();
		user.setLogin(resultSet.getString("login"));
		return user;
	}
}
