## An Introduction to Capybara

Capybara is a domain specific language – a DSL – that comes with methods that allow you to visit a page, fill in a textbox, click a button, click a link, check a checkbox, choose a radio button, selecting an item from a dropdown, search within a section of the page, test a login screen, and verify popups and modals work. Sample code for these features can be found in the [intro](https://github.com/tjmaher/tau-capybara/tree/master/intro) section. 

## Installing the Intro Section

In order to run tests in the intro section:
* Download the entire TAU Capybara project to your local machine, through Zip file or Git. 
* Go into the intro folder of the project: *cd intro* 
* Install all intro project dependencies: *bundle install*
* Run all tests in the spec folder: *bundle exec rspec spec*

All sample code in [tau-capybara/intro/spec/features/](https://github.com/tjmaher/tau-capybara/tree/master/intro/spec/features) tests against [Dave Haeffner](http://davehaeffner.com/)'s test site, [The-Internet](https://the-internet.herokuapp.com/) and verifies that: 

## Spec/Features/[01_visit_home_spec.rb](https://github.com/tjmaher/tau-capybara/blob/master/intro/spec/features/01_visit_home_spec.rb)

**Visit The-Internet Home Page**
* Title: Welcome to the-internet
* Subtitle: Available Examples
* Current URL: https://the-internet.herokuapp.com/
* Verify Link Exists: Form Authentication
* Click Link: Form Authentication ==> Navigate to /login
* Verify Link Exists: Dropdown
* Click On: Dropdown ==> Navigate to /dropdown
* Find Link and Click: Dynamic Loading ==> Navigate to /dynamic_loading


## Spec/Features/[02_within_spec.rb](https://github.com/tjmaher/tau-capybara/blob/master/intro/spec/features/02_within_spec.rb)

**Within: Scoping**
https://the-internet.herokuapp.com/checkboxes
* Within (Checkboxes): checkbox 1
* Within (Checkboxes): checkbox 2

## Spec/Features/[03_login_spec.rb](https://github.com/tjmaher/tau-capybara/blob/master/intro/spec/features/03_login_spec.rb)

**Login Page: Validate Page Elements**
https://the-internet.herokuapp.com/login
* Displayed Title: Login Page
* Displayed Textbox: Username
* Displayed Textbox: Password
* Displayed Button: Login

**Login Page: Invalid Credentials Display Alert to User**
* tjmaher / wrong_password: Your username is invalid!
* tomsmith / wrong_password: Your password is invalid!

**Login Page: Valid Credentials Login to Secure Area**
* tomsmith / SuperSecretPassword!

## Spec/Features/[04_secure_area_spec.rb](https://github.com/tjmaher/tau-capybara/blob/master/intro/spec/features/04_secure_area_spec.rb) 

**Secure Area: Validate Page Elements After Login**
* Displayed Title: Secure Area
* Displayed Message: Welcome to the Secure Area
* Displayed Button: Logout
* Displayed Alert: You logged into a secure area!

**Secure Area: User Can Logout**
* Select Logout Button: Login Page with Info Message

## Spec/Features/[05_dropdown_spec.rb](https://github.com/tjmaher/tau-capybara/blob/master/intro/spec/features/05_dropdown_spec.rb)

**Dropdown List: Validate Page Elements**
https://the-internet.herokuapp.com/dropdown
* Displayed Title: Dropdown List

**Dropdown List: Switching Values**
* Default Value: Please select an option
* Switched to: Option 1
* Switched to: Option 2

**Dropdown List: Validate Page Elements**
* Displayed Title: Dynamically Loaded Page Elements
* Displayed Button: Start

## Spec/Features/[06_slow_loading_spec.rb](https://github.com/tjmaher/tau-capybara/blob/master/intro/spec/features/06_slow_loading_spec.rb)

**Checking Slow Loading Components**
* Page Should Wait For Hello World

## Spec/Features/[07_javascript_alerts_spec.rb](https://github.com/tjmaher/tau-capybara/blob/master/intro/spec/features/07_javascript_alerts_spec.rb)

**JavaScript Alerts: Validate Page Elements**
https://the-internet.herokuapp.com/javascript_alerts
* Displayed Title: Dynamically Loaded Page Elements
* Displayed Button: Click for JS Alert
* Displayed Button: Click for JS Confirm
* Displayed Button: Click for JS Prompt

**JavaScript Alerts: Interacting with Modals**
* JS Alert: Select [OK] => Message: Successfully Clicked Alert
* JS Confirm: Dismiss Alert, Select [Cancel] => Message: You clicked: Cancel
* JS Confirm: Accept Alert, Select [OK] => Message: You clicked: Ok

## Want to Run Only One of the Tests?
To run only the first test in the spec folder: 
* *bundle exec rspec spec/features/01_visit_home_spec.rb*
