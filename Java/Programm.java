package Java24Steps.OOP.final_work;

import java.util.ArrayList;
import java.util.List;

public class Programm {
    public static void main(String[] args) {

        Dogs dog1 = new Dogs("Рекс", 10, 1 , 1);
        Dogs dog2 = new Dogs("Шарик", 10, 1 , 2);
        Dogs dog3= new Dogs("Вальдемар", 10, 1 , 3);

        Cats cat1 = new Cats("Мурзик", 3,2,1);
        Cats cat2 = new Cats("Муся", 4,2,2);
        Cats cat3 = new Cats("Васька", 5,2,3);


        List<Animals> animalsList = new ArrayList<>();
        animalsList.add(dog1);
        animalsList.add(dog2);
        animalsList.add(dog3);
        animalsList.add(cat1);
        animalsList.add(cat2);
        animalsList.add(cat3);


    }
}
