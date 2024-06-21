package Activities;


import javax.tools.StandardLocation;
import java.util.HashMap;

public class Activity11 {

    public static void main(String[] args) {
        HashMap<Integer, String> COLMAP = new HashMap<Integer, String>();

        // Using add() 6 objects
        COLMAP.put(1, "Red");
        COLMAP.put(2, "Amber");
        COLMAP.put(3, "Indigo");
        COLMAP.put(4, "Blue");
        COLMAP.put(5, "White");
        System.out.println("Original Map  " + COLMAP);
        //COLMAP.remove(5);
        COLMAP.remove(4,"Blue");
        System.out.println("After removing Blue: " + COLMAP);
        if(COLMAP.containsValue("Orange")) {
            System.out.println("Orange exists in the Map");
        } else {
            System.out.println("Orange does not exist in the Map");
        }
        System.out.println("Number of pairs in the Map is: " +COLMAP.size());
    }
}
