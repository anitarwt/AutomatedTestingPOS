package pospack;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.Test;

public class LoginUntilReaktivasi {
WebDriverWait wait;
	
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
				   	driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
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
		
		
		@Test(dependsOnMethods="Logininfo")
		public void Dashboard() throws InterruptedException {
			Thread.sleep(300);
			driver.findElement(By.id("menu-22")).click();
		}
		
		@Test(dependsOnMethods="Dashboard")
		public static void DetailMenginap() throws InterruptedException {
				driver.findElement(By.id("dropdowncSegment0")).click();  
				driver.findElement(By.cssSelector("[class='79']")).click(); 
				driver.findElement(By.xpath("//*[@id=\"stay-detail-form-0\"]/div[2]/span[2]/ul[1]")).click();
				Thread.sleep(1000);
				driver.findElement(By.xpath("//div[text()='24']")).click();
				JavascriptExecutor js = (JavascriptExecutor)driver;
				 //scroll to down
				 js.executeScript("scrollBy(0,2000)");
				 driver.findElement(By.id("title")).click();
				 driver.findElement(By.cssSelector("[class='Tuan']")).click();
				 driver.findElement(By.xpath("//input[@type='text'][@placeholder='Nama Depan']")).sendKeys("rahmat");
				 driver.findElement(By.xpath("//input[@type='text'][@placeholder='Nama Belakang']")).sendKeys("dinda");
				driver.findElement(By.id("country")).sendKeys("In");
				//pemilihan autocomplete
				WebElement from = driver.findElement(By.xpath("//*[@id=\"country\"] "));
				from.clear();
				from.sendKeys("Indonesia");
				WebDriverWait wait=new WebDriverWait(driver, 10);
				wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[@id=\"autocountry\"]")));
				driver.findElement(By.xpath( "//*[@id=\"autocountry\"]")).click();
				driver.findElement(By.xpath("//*[@id=\"phone\"]")).sendKeys("023989482738");
				driver.findElement(By.xpath("//*[@id=\"book-form\"]/div[3]/div/button[2]")).click();     
					}
		@Test(dependsOnMethods="DetailMenginap")
		public static void Konfirmasi() throws InterruptedException {	   
			driver.findElement(By.xpath("//*[@id=\"info-book\"]/div[3]/div/button[1]/span")).click();  	
		}
		@Test(dependsOnMethods="Konfirmasi")
		public static void Reaktivasi() throws InterruptedException{
			//WebDriverWait tungguData=new WebDriverWait(driver, 10);
			//tungguData.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[@id=\"info-book\"]/div[2]/div[2]/div[1]/div[2]/ul/li[2]/ul")));
			//klik button opsi batal
		driver.findElement(By.className("cancel-btn-opt")).click();
			
		//not show
		//klik not show dan proses no show	
		driver.findElement(By.xpath("//*[@id=\"2\"]")).click();
		//klik check box pada not show
		driver.findElement(By.xpath("//*[@id=\"info-book\"]/section/div[2]/div/div[1]/div/span[2]/div[1]/div[2]/div/span[1]/input")).click();
		driver.findElement(By.xpath("//*[@id=\"info-book\"]/section/div[2]/div/div[1]/div/span[2]/div[1]")).click();
		driver.findElement(By.id("release")).click();
		WebDriverWait wait=new WebDriverWait(driver, 10);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.className("confirm-content")));
		driver.findElement(By.id("release")).click();
		
		WebDriverWait tunggu=new WebDriverWait(driver, 30);
		tunggu.until(ExpectedConditions.elementToBeClickable(By.id("release")));
		
	//button reaktivasi dan proses
		driver.findElement(By.cssSelector(".cancel-btn-opt")).click();
		driver.findElement(By.xpath("//*[@id=\"3\"]")).click();
		
		driver.findElement(By.xpath("//*[@id=\"info-book\"]/section/div[2]/div/div[1]/div/span[2]/div[1]/div[2]/div/span[1]/input")).click();
		driver.findElement(By.xpath("//*[@id=\"info-book\"]/section/div[2]/div/div[1]/div/span[2]/div[1]")).click();
		driver.findElement(By.id("re-activate")).click();
		WebDriverWait waitm=new WebDriverWait(driver, 10);
		waitm.until(ExpectedConditions.visibilityOfElementLocated(By.className("confirm-content")));
		driver.findElement(By.id("re-activate")).click();
		
		}
		

}
