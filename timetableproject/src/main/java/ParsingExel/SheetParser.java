package ParsingExel;

import DBEntities.*;
import Databases.DAO.*;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class SheetParser {
//    private static Group findGroup(int course, int groupNumber) {
//        for (Group group : Main.groups) {
//            if (group.getCourse() == course && group.getNumber() == groupNumber)
//                return group;
//        }
//        System.out.println("Didn't find group " + course + " " + groupNumber);
//        return null;
//    }

    private static String clear(String t) {
        while (t.charAt(t.length() - 1)  ==  '\n'
                || t.charAt(t.length() - 1)  ==  ' '
                || t.charAt(t.length() - 1)  ==  ',')
            t = t.substring(0, t.length() - 1);
        while (t.charAt(0)  ==  '\n'
                || t.charAt(0)  ==  ' ')
            t = t.substring(1);
        return t;
    }

    private static void addRows(Sheet sheet) throws CloneNotSupportedException {

        String course = "";
        String hours = "";
        String subject = "", teacher = "";
        String groups = "";

        for (Row row : sheet) {
            if (row.getRowNum() < 6) continue;
            Boolean f = false;
            for (Cell cell : row) {
                if (!cell.getCellTypeEnum().equals(CellType.BLANK))
                    f = true;
            }
            if (!f) {
                course =  "";
                hours = "";
                subject = "";
                teacher = "";
                groups = "";
                continue;
            }

            Pair pair;

            groups = (!row.getCell(2).getRichStringCellValue().getString().isEmpty()) ?
                    row.getCell(2).getRichStringCellValue().getString() :
                    groups;

            groups = clear(groups);

            if (!row.getCell(3).getRichStringCellValue().getString().isEmpty())
                pair = new Lab();
            else if (groups.split(",").length > 1)
                pair = new Lecture();
            else
                pair = new Practice();



            course = (!row.getCell(1).getStringCellValue().isEmpty()) ?
                    row.getCell(1).getStringCellValue() :
                    course;

            course = clear(course);

            pair.setCourse(Integer.parseInt(course) - 1);



            subject = (!row.getCell(5).getRichStringCellValue().getString().isEmpty()) ?
                    row.getCell(5).getRichStringCellValue().getString() :
                    subject;

            subject = clear(subject);

            pair.setSubject(subject);



            teacher = (!row.getCell(15).getRichStringCellValue().getString().isEmpty()) ?
                    row.getCell(15).getRichStringCellValue().getString() :
                    teacher;

            teacher = clear(teacher);

            pair.setTeacher(teacher);

//            Main.subjects.add(subject);
//            Main.teachers.add(teacher);



            groups = (!row.getCell(2).getRichStringCellValue().getString().isEmpty()) ?
                    row.getCell(2).getRichStringCellValue().getString() :
                    groups;

            groups = clear(groups);

//            for (int day = 17; day < 23; day++) {
//                String[] data = row.getCell(day).getStringCellValue().split(",");
//                //System.out.println(row.getCell(i).getStringCellValue() + " " + data.length);
//                for (int time = 0; time < data.length; time++)
//                    pair.setPreference( time,day - 17,
//                            Integer.parseInt(data[time]));
//            }



            hours = (!row.getCell(7).getRichStringCellValue().getString().isEmpty()) ?
                    row.getCell(7).getRichStringCellValue().getString() :
                    (!row.getCell(9).getRichStringCellValue().getString().isEmpty()) ?
                            row.getCell(9).getRichStringCellValue().getString() :
                            (!row.getCell(11).getRichStringCellValue().getString().isEmpty()) ?
                                    row.getCell(11).getRichStringCellValue().getString() :
                                    (!row.getCell(13).getRichStringCellValue().getString().isEmpty()) ?
                                            row.getCell(13).getRichStringCellValue().getString() :
                                            "";
            System.out.println(hours);
            hours = clear(hours);


            //System.out.println(row.getCell(3).getRichStringCellValue());
            if (!row.getCell(3).getRichStringCellValue().getString().isEmpty()) {
                String s = row.getCell(3).getStringCellValue();
                System.out.println(s + " " + s.contains("a"));

                if (s.equals("а") ||
                        s.equals("А") || s.contains("a"))
                    ((Lab) pair).setSubGroup(Pair.GroupPart.FIRST);
                else
                    ((Lab) pair).setSubGroup(Pair.GroupPart.SECOND);
            }

            String cvsSplitBy = "[,;]";
            String[] data = groups.split(cvsSplitBy);
            ArrayIterator it = new ArrayIterator(data);

            while (it.hasNext()) {
                String t = it.next();
                t = clear(t);

                pair.addGroup(GroupDAO.findGroup(Integer.parseInt(course) - 1, Integer.parseInt(t) - 1));
            }

            Pair.TOTAL_NUMBER_OF_PAIRS++;
            pair.setPairNumber(Pair.TOTAL_NUMBER_OF_PAIRS);
            PairDAO.addPair(pair, "DMA");

            //pairs.add(pair);

//            for (int i = 1; i < Integer.parseInt(hours); i++) {
//                Pair clonePair = pair.clone();
//                pairs.add(clonePair);
//            }
        }
    }

    public static void readPairs() {
        try {
            // "input.xlsx", "vma.xlsx", "bmi.xlsx", "isu.xlsx", "tvims.xlsx"
            System.out.println(new File(".").getAbsoluteFile());
            String[] files = {"cur.xlsx"};
            for (String file : files) {
                FileInputStream f = new FileInputStream(new File(file));
                System.out.println(f.toString());
                XSSFWorkbook workbook = new XSSFWorkbook(f);
                XSSFSheet sheet = workbook.getSheetAt(0);
                addRows(sheet);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
        catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }
}
