package com.src.mn;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumCheck {
	public static void main(String[] args) throws InterruptedException {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\raguda\\Downloads\\chromedriver-win64\\chromedriver-win64\\chromedriver.exe");
		ChromeDriver driver = new ChromeDriver();
		driver.get("http://localhost:12966/FlightBookingSystemWebService/mainpage.jsp");
		driver.findElement(By.id("user")).click();
		Thread.sleep(100);
		WebElement adminid = driver.findElement(By.name("userid"));
		adminid.sendKeys("1235");
		WebElement password = driver.findElement(By.name("password"));
		password.sendKeys("chakri");
		driver.findElement(By.id("submit")).click();
//		driver.findElement(By.id("btn")).click();
	}
}
