package DBEntities;

public class Practice extends Pair {

    private int group;

    public Practice() {
        super();
        weight = 2.;
    }

    @Override
    public void addGroup(int group) {
        this.group = group;
    }

    @Override
    public Object getIterableElement(int i) {
        return group;
    }

    @Override
    public int getNumberOfIterableElements() {
        return 1;
    }

    @Override
    public int getNumberOfStudents() {
        return group;
    }

    public String write() {
        return super.write() + " ### Group - " + (group + 1);
    }

}

