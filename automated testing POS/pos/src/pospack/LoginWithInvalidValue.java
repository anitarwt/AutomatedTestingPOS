package pospack;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.Test;

public class LoginWithInvalidValue {
	
	 WebDriver driver;
	@Test
	public void StartApps() {
		System.setProperty("webdriver.chrome.driver","C:\\selenium\\driver\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.get("https://pos-22staging.thecaption.com/login");
		String currentURL=driver.getCurrentUrl();
		Assert.assertTrue(currentURL.contains("login"));
	}
	@Test(dependsOnMethods="StartApps")
	public void Login() {
		driver.findElement(By.xpath("//input[@type='text'][@placeholder='Email']")).sendKeys("rwtanita@gmail.com");
		driver.findElement(By.xpath("//input[@type='password'][@placeholder='Password']")).sendKeys("anita imut");
		driver.findElement(By.xpath("//button[text()='Login']")).click();
		
	}
	
	

}
