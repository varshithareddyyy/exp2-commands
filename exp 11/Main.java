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
    public void testIncrementButton() {
        // Navigate to the local HTML file
        driver.get("file:///path/to/program.html");

        // Click the increment button
        driver.findElement(By.id("increment-button")).click();

        // Get the updated text content from the output element
        String result = driver.findElement(By.id("output")).getText();

        // Assert that the value has incremented to "1"
        assert result.equals("1");
    }

    @After
    public void tearDown() {
        // Close the browser session
        driver.quit();
    }
}
