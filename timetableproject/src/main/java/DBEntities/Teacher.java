package DBEntities;

public class Teacher {
    private int id;
    private String name;
    private String link;

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getLink() {
        return link;
    }

    public Teacher(int id, String name, String link) {
        this.id = id;
        this.name = name;
        this.link = link;
    }
}
