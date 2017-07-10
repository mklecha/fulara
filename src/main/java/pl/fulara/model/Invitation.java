package pl.fulara.model;

import java.io.Serializable;

public class Invitation extends Ftlable implements Serializable {


    public static final String LIST_QUERY = "SELECT `key`, name, message, plural FROM invitation ORDER BY name";

    public static final String SINGLE_QUERY = "SELECT `key`, name, message, plural FROM invitation WHERE `key` = ?";

    public static final String DELETE_QUERY = "DELETE FROM invitation WHERE `key` = ?";

    public static final String INSERT_QUERY = "INSERT INTO invitation VALUES (?, ?, ?, ?)";


    private String key;
    private String name;
    private String message;
    private boolean plural;

    public Invitation(String key, String name, String message, boolean plural) {
        this.key = key;
        this.name = name;
        this.message = message;
        this.plural = plural;
    }

    public String getKey() {
        return key;
    }

    public String getName() {
        return name;
    }

    public String getMessage() {
        return message;
    }

    public boolean isPlural() {
        return plural;
    }
}