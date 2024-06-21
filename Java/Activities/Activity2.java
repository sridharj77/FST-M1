package Activities;

public class Activity2 {
    public static void main(String[] args) {
        int[] n = {10, 77, 10, 54, -11, 10};
         int sum = 0;
        for (int i = 0; i<n.length; i++) {
            if (n[i] == 10) {
                sum = sum + n[i];
                // System.out.println("Total is" + sum);
                if (sum != 30) {
                    //System.out.println("Total is not equal  to 30");
                }
                if (sum == 30) {
                    System.out.println("Total is equal to " + sum);
                }
            }

        }
    }
}


