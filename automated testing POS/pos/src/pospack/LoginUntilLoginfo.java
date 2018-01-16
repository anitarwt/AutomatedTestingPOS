package pospack;

import java.util.HashMap;
import java.util.Map;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.Test;




public class LoginUntilLoginfo {
	public static WebDriver driver;
	

	@Test
	public static void Login() {
		try{
			
            // Create object of HashMap Class
			Map<String, Object> prefs = new HashMap<String, Object>();
			          
			            // Set the notification setting it will override the default setting
			prefs.put("profile.default_content_setting_values.notifications", 2);
			
			            // Create object of ChromeOption class
				ChromeOptions options = new ChromeOptions();
			
			            // Set the experimental option
			options.setExperimentalOption("prefs", prefs);
			
			            // pass the options object in Chrome driver
			
				driver = new ChromeDriver(options);
				//WebDriver driver = new ChromeDriver();
				System.setProperty("webdriver.chrome.driver","C:\\selenium\\driver\\chromedriver.exe");
				driver.get("https://pos-22folio.thecaption.com/login");
				String currentURL=driver.getCurrentUrl();
				Assert.assertTrue(currentURL.contains("login"));
				driver.manage().window().maximize();
				driver.findElement(By.id("email")).sendKeys("admin@daunhotel.com");
				driver.findElement(By.id("pass")).sendKeys("12Caption3");
				driver.findElement(By.xpath("//button[text()='Login']")).click();
				}
				catch(NullPointerException e){
					System.out.println("NullPointerException..");
			}
	}
	
	@Test(dependsOnMethods="Login")
	public void Logininfo(){
		WebDriverWait wait = new WebDriverWait(driver, 40);
		wait.until(
			ExpectedConditions.visibilityOfElementLocated(
					By.xpath("//button[text()='Lanjut']")
			)
		);

		
		driver.findElement(By.xpath("//input[@type='text'][@placeholder='Petty Cash Awal']")).clear();
		driver.findElement(By.xpath("//input[@type='text'][@placeholder='Petty Cash Awal']")).sendKeys("300000");
	driver.findElement(By.xpath("//button[text()='Lanjut']")).click();
	}
	
	
	
	
	
	
	

}