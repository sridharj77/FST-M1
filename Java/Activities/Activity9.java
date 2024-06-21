package Activities;

import java.util.ArrayList;

public class Activity9 {
    public static void main(String[] args) {
    ArrayList<String> myList = new ArrayList<>();
    myList.add("TATA");
    myList.add("MG");
    myList.add("BMW");
    myList.add("AUDI");
    myList.add("TESLA");
    System.out.println("Names of Manufacturers: " + myList);

    {
    // checks if BMW is present in the arraylist
        System.out.print("Is BMW is present in the arraylist: ");
        System.out.println(myList.contains("BMW"));
        int size = myList.size();
        System.out.println("Size of list = " + size);
        // remove element
        myList.remove(2);
        //String element = myList.remove(2);

        System.out.println("Names of Manufacturers: " + myList);
        int size1 = myList.size();
        System.out.println("New Size of list after Removing Name  = " + size1);

    }

}
    }

