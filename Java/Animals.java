package Java24Steps.OOP.final_work;

import java.util.List;

public class Animals {
    private String name;
    private int age;

    private int aviary;
    private int cell;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getAviary() {
        return aviary;
    }

    public void setAviary(int aviary) {
        this.aviary = aviary;
    }

    public int getCell() {
        return cell;
    }

    public void setCell(int cell) {
        this.cell = cell;
    }

    public Animals(String name, int age, int aviary, int cell) {
        this.name = name;
        this.age = age;
        this.aviary = aviary;
        this.cell = cell;
    }
}
