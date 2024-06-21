
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager
from selenium.webdriver.support import expected_conditions, wait

# Set up the Firefox Driver with WebDriverManger
service = FirefoxService(GeckoDriverManager().install())
# Start the Driver
with (webdriver.Firefox(service=service) as driver):
    driver.get("https://v1.training-support.net/selenium/tables")
    # title of the page
    print("Page title is: ", driver.title)
    driver.maximize_window()
    row =driver.find_elements(By.XPATH, "//table/tr")






