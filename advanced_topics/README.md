# tau-capybara



##  Advanced Topics 

The [Advanced Topics](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics) section consists of four sample projects: 

* [01_debugging_with_save_and_open](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics/01_debugging_with_save_and_open): Explore how Capybara saves screenshots, then with the Launchy gem, opens them to view. 
* [02_chrome_logging](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics/02_chrome_logging): Examine how the Chromium project has allowed users to trap Selenium WebDriver errors, and JavaScript errors in the browser. 
* [03_apparition_driver](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics/03_apparition_driver): Implementing the new headless Apparition browser, created by Thomas Walpole, the current maintainer of Capybara. 
* [04_applitools](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics/04_applitools): Review how to integrate Applitools Eyes into your Capybara project in order to perform visual validation. 

## Running Advanced_Topics 

Each of the four Advanced Topics has its own project folder. In order to run:
* From the root folder: Change the directory to the topic you wish, such as: *cd advanced_topics/01_debugging_with_save_and_open*
* Install all project dependencies of that advanced topic: *bundle install*
* Once in the proper subtopic folder, to run all projects in that subfolder: *bundle exec rspec spec*

All sample code tests against [Dave Haeffner](http://davehaeffner.com/)'s test site, [The-Internet](https://the-internet.herokuapp.com/).
