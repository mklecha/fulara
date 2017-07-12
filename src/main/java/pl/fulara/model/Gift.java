package pl.fulara.model;

import java.io.Serializable;

public class Gift extends Ftlable implements Serializable {

    private static final String defaultPhoto = "deafult.jpg";

    public static final String LIST_QUERY = "SELECT id, name, descr, link, photo, reserved FROM gift ORDER BY reserved, id";

    public static final String CHANGE_RESERVARION = "UPDATE gift SET reserved = NOT reserved WHERE id = ?;";

    public static final String DELETE_QUERY = "DELETE FROM gift WHERE id = ?";

    private int id;
    private String name;
    private String description;
    private String link;
    private String photo;
    private boolean reserved;

    public Gift(int id, String name, String description, String link, String photo, boolean reserved) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.link = link;
        if (photo == null || photo.isEmpty()) {
            this.photo = defaultPhoto;
        } else {
            this.photo = photo;
        }
        this.reserved = reserved;
    }

    public Gift(int id, String name, String description, String link, String photo, int reserved) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.link = link;
        if (photo.isEmpty()) {
            this.photo = defaultPhoto;
        } else {
            this.photo = photo;
        }
        this.reserved = reserved != 0;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getLink() {
        return link;
    }

    public String getPhoto() {
        return photo;
    }

    public boolean isReserved() {
        return reserved;
    }

    @Override
    public String toString() {
        return "Gift{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", link='" + link + '\'' +
                ", photo='" + photo + '\'' +
                ", reserved=" + reserved +
                '}';
    }
}