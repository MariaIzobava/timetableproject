package DBEntities;

public class Lab extends Pair {
    private int group;
    private GroupPart subGroup = GroupPart.FIRST;

    public Lab() {
        super();
        weight = 1.;
    }

    public void setSubGroup(GroupPart subGroup) {
        this.subGroup = subGroup;
    }

    public GroupPart getSubGroup() {
        return subGroup;
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
        return super.write() + " ### Group - " + (group + 1) + " " + subGroup + " part";
    }

}
