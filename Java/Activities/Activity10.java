package Activities;
import java.lang.module.FindException;
import java.util.HashSet;

public class Activity10 {

        public static void main(String[] args) {
            HashSet<String> HS = new HashSet<>();

            // Using add() 6 objects
            HS.add("MONDAY");
            HS.add("TUESDAY");
            HS.add("WEDNESDAY");
            HS.add("THURSDAY");
            HS.add("FRIDAY");
            HS.add("SATURDAY");
            System.out.println("Initial HashSet: " + HS);
            System.out.println("Initial HashSet Size: " + HS.size());
            // Using remove() method

            boolean value2 = HS.remove("SUNDAY");
            if(HS.remove("SUNDAY")){
                System.out.println("SUNDAY removed from set");
            }else{System.out.println("SUNDAY not present in set ");
            }

            boolean value1 = HS.remove("MONDAY");
            if(HS.remove("MONDAY")){
                System.out.println("MONDAY removed from set");
            }else{System.out.println("MONDAY not present in set ");
            }
            //Contains method
            System.out.println("Does the Set contains 'FRIDAY'?: " + HS.contains("FRIDAY"));
            System.out.println("Does the Set contains 'SUNDAY'?: " + HS.contains("SUNDAY"));
            System.out.println("HashSet: " + HS);

        }

}
