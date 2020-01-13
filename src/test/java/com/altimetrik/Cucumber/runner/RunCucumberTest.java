package com.altimetrik.Cucumber.runner;

import java.io.File;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.cucumber.listener.Reporter;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions( features = "src/test/resources/Features", glue = {
"classpath:com.altimetrik.Cucumber.stepDefinations" }, tags = { "@smoke, @hooks, @get, @post, @put, @getfail, @postfail, @putfail" }, plugin = {
		"com.cucumber.listener.ExtentCucumberFormatter:D:\\Users\\ABhavle\\eclipse-workspace\\Cucumber_API\\target\\html-report\\cucumber_ExtentReport.html",
		"html:target/html-report" , "pretty" }, monochrome = true)
public class RunCucumberTest {
	@AfterClass
	public static void writeExtentReport() {
		Reporter.loadXMLConfig(new File("D:\\Users\\ABhavle\\eclipse-workspace\\Cucumber\\src\\test\\java\\com\\altimetrik\\Cucumber\\reporter\\extent-config.xml"));
		Reporter.setSystemInfo("User", System.getProperty("user.name"));
		Reporter.setSystemInfo("OS", "Windows 10");
		//Reporter.setTestRunnerOutput("Sample test runner output message");
	}
}
