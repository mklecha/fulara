package pl.fulara.model;

public class User {

	public static final String LIST_USER_QUERY = "SELECT login FROM user WHERE login = binary ? AND password = binary ?";

	private String login;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	@Override
	public String toString() {
		return "User{" +
				"login='" + login + '\'' +
				'}';
	}
}
