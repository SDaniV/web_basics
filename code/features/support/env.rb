require 'page-object'
require 'page-object/page_factory'
require 'pry'
require 'require_all'
require 'selenium-webdriver'

require_all './page'

CHROMEDRIVER_TOOL_PATH = '../../tools/chromedriver/chromedriver80'.freeze
root_path = File.dirname(__FILE__)
Selenium::WebDriver::Chrome::Service.driver_path = File.join("#{root_path}",
                                                             CHROMEDRIVER_TOOL_PATH)

browser = Selenium::WebDriver.for :chrome
browser.manage.window.maximize
browser.manage.timeouts.implicit_wait = 15
# options.add_argument('--disable-gpu')
# options.add_argument('--start-maximized')
# options.add_argument('--no-sandbox')

World(PageObject::PageFactory)

Before do |scenario|
  @browser = browser
end

at_exit do
  browser.quit
end
