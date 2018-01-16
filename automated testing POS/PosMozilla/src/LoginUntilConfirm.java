
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import org.openqa.selenium.firefox.FirefoxDriver;

import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.Test;

public class LoginUntilConfirm {
	WebDriverWait wait;
	
	@Test
	public void StartApps() {
		/*try{
			FirefoxProfile ffprofile = new FirefoxProfile();
			ffprofile.setPreference("dom.webnotifications.enabled", false);*/
			
		System.setProperty("webdriver.gecko.driver","C:\\selenium\\selenium mozilla\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("https://pos-22staging.thecaption.com/login");
		String currentURL=driver.getCurrentUrl();
		Assert.assertTrue(currentURL.contains("login"));
		driver.manage().window().maximize();
	   	driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		driver.findElement(By.id("email")).sendKeys("admin@daunhotel.com");
		driver.findElement(By.id("pass")).sendKeys("12Caption3");
		driver.findElement(By.xpath("//button[text()='Login']")).click();
/*		}
		catch(NullPointerException e){
			System.out.println("NullPointerException..");
	
				}*/

}
	}


