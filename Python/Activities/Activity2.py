
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager
# Set up the Firefox Driver with WebDriverManger
service = FirefoxService(GeckoDriverManager().install())
# Start the Driver
with (webdriver.Firefox(service=service) as driver):
    driver.get("https://v1.training-support.net/selenium/login-form")
    # title of the page
    print("Page title is: ", driver.title)
    driver.maximize_window()
    # click
    uname=driver.find_element(By.ID, "username")
    password=driver.find_element(By.ID, "password")
    uname.send_keys("admin")
    password.send_keys("password")

    login = driver.find_element(By.CSS_SELECTOR, "button.button:nth-child(4)")
    login.click()
    print("LoggedIn")



