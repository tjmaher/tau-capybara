# tau-capybara

## About TAU-Capybara

[Test Automation Univerity](https://testautomationu.applitools.com/) is an [Applitools](http://applitools.com) sponsored free collection of courses to help train automation developers in their craft, from those just entering the field to seasoned experts. 

**TAU-Capybara** is the companion piece for the Test Automation University course, [Introduction to Capybara](https://testautomationu.applitools.com/capybara-ruby/), created by [T.J. Maher](http://tjmaher.com).

## An Introduction to Capybara

Capybara is a domain specific language – a DSL – that comes with methods that allow you to visit a page, fill in a textbox, click a button, click a link, check a checkbox, choose a radio button, selecting an item from a dropdown, search within a section of the page, test a login screen, and verify popups and modals work. Sample code for these features can be found in the [intro](https://github.com/tjmaher/tau-capybara/tree/master/intro) section. 

### Running Intro Projects 

In order to run tests in the intro section:
* Download the entire TAU Capybara project to your local machine, through Zip file or Git. 
* Go into the intro folder of the project: *cd intro* 
* Install all intro project dependencies: *bundle install*
* Run all tests in the spec folder: *bundle exec rspec spec*
* Run only the first test in the spec folder: *bundle exec rspec spec/features/01_visit_home_spec.rb*

## Exploring Advanced Topics 

The [Advanced Topics](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics) section consists of four sample projects: 

* [01_debugging_with_save_and_open](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics/01_debugging_with_save_and_open): Explore how Capybara saves screenshots, then with the Launchy gem, opens them to view. 
* [02_chrome_logging](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics/02_chrome_logging): Examine how the Chromium project has allowed users to trap Selenium WebDriver errors, and JavaScript errors in the browser. 
* [03_apparition_driver](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics/03_apparition_driver): Implementing the new headless Apparition browser, created by Thomas Walpole, the current maintainer of Capybara. 
* [04_applitools](https://github.com/tjmaher/tau-capybara/tree/master/advanced_topics/04_applitools): Review how to integrate Applitools Eyes into your Capybara project in order to perform visual validation. 

### Running Advanced_Topics Projects

Each of the four Advanced Topics has its own project folder. In order to run:
* From the root folder: Change the directory to the topic you wish, such as: *cd advanced_topics/01_debugging_with_save_and_open*
* Install all project dependencies of that advanced topic: *bundle install*
* Once in the proper subtopic folder, to run all projects in that subfolder: *bundle exec rspec spec*

All sample code tests against [Dave Haeffner](http://davehaeffner.com/)'s test site, [The-Internet](https://the-internet.herokuapp.com/).
