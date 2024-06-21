package Activities;
//Abstract class
abstract class Book{
    String title;
    abstract void setTitle(String s);
   //Concrete method
    String getTitle() {
        return title;
    }
}
//Write MyBook class here
class MyBook extends Book{
    void setTitle(String s) {
        this.title = s;
    }
}
public class Activity5 {
    public static void main(String []args){
        String title="Hover Car Racer";
        MyBook new_novel=new MyBook();
        new_novel.setTitle(title);
        System.out.println("The title is: "+new_novel.getTitle());
    }
}