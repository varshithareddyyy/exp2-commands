import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Main {
    private WebDriver driver;

    @Before
    public void setUp() {
        System.setProperty("webdriver.chrome.driver", "path/to/chromedriver");
        driver = new ChromeDriver();
    }

    @Test
    public void testHomePageLoads() {
        driver.get("http://localhost:8080");
        String title = driver.getTitle();
        assert title.equals("My Containerized Application");
    }

    @Test
    public void testSubmitForm() {
        driver.get("http://localhost:8080");
        driver.findElement(By.name("name")).sendKeys("John Doe");
        driver.findElement(By.name("email")).sendKeys("john.doe@example.com");
        driver.findElement(By.name("submit")).click();
        String result = driver.findElement(By.id("result")).getText();
        assert result.equals("Form submitted successfully!");
    }

    @After
    public void tearDown() {
        driver.quit();
    }
}
