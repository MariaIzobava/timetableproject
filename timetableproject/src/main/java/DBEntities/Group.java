package DBEntities;

public class Group {
    private int id;
    private int course;
    private int number;
    private int numberOfStudents;

    public Group(int id, int course, int number, int numberOfStudents) {
        this.id = id;
        this.course = course;
        this.number = number;
        this.numberOfStudents = numberOfStudents;
    }

    public int getCourse() {
        return course;
    }

    public int getNumber() {
        return number;
    }

    public int getNumberOfStudents() {
        return numberOfStudents;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCourse(int course) {
        this.course = course;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public void setNumberOfStudents(int numberOfStudents) {
        this.numberOfStudents = numberOfStudents;
    }
}
