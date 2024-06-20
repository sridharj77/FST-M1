package activities;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class activity1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		  //Config driver
		  WebDriverManager.firefoxdriver().setup();
		  WebDriver driver =new FirefoxDriver();
		  
	    driver.get("https://training-support.net/");

	    String PG1title=driver.getTitle();
	    System.out.println("Home page title is " +PG1title);
		
	    //Id is missing using linktext
	    WebElement button=driver.findElement(By.linkText("About Us"));
	    button.click();
	    
	    
		  String PG1title2=driver.getTitle();
		  System.out.println("About page title is " +PG1title2);
		  
		  driver.close();
		  
		
	  

	}

}
