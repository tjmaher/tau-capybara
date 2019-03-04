Visit The-Internet Home Page
* Title: Welcome to the-internet
* Subtitle: Available Examples
* Current URL: https://the-internet.herokuapp.com/
* Verify Link Exists: Form Authentication
* Click Link: Form Authentication ==> Navigate to /login
* Verify Link Exists: Dropdown
* Click On: Dropdown ==> Navigate to /dropdown
* Find Link and Click: Dynamic Loading ==> Navigate to /dynamic_loading

Within: Scoping
* Within (Checkboxes): checkbox 1
* Within (Checkboxes): checkbox 2

Login Page: Validate Page Elements
* Displayed Title: Login Page
* Displayed Textbox: Username
* Displayed Textbox: Password
* Displayed Button: Login

Login Page: Invalid Credentials Display Alert to User
* tjmaher / wrong_password: Your username is invalid!
* tomsmith / wrong_password: Your password is invalid!

Login Page: Valid Credentials Login to Secure Area
* tomsmith / SuperSecretPassword!

Secure Area: Validate Page Elements After Login
* Displayed Title: Secure Area
* Displayed Message: Welcome to the Secure Area
* Displayed Button: Logout
* Displayed Alert: You logged into a secure area!

Secure Area: User Can Logout
* Select Logout Button: Login Page with Info Message

Dropdown List: Validate Page Elements
* Displayed Title: Dropdown List

Dropdown List: Switching Values
* Default Value: Please select an option
* Switched to: Option 1
* Switched to: Option 2

Dropdown List: Validate Page Elements
* Displayed Title: Dynamically Loaded Page Elements
* Displayed Button: Start

Checking Slow Loading Components
* Page Should Wait For Hello World

JavaScript Alerts: Validate Page Elements
* Displayed Title: Dynamically Loaded Page Elements
* Displayed Button: Click for JS Alert
* Displayed Button: Click for JS Confirm
* Displayed Button: Click for JS Prompt

JavaScript Alerts: Interacting with Modals
* JS Alert: Select [OK] => Message: Successfully Clicked Alert
* JS Confirm: Dismiss Alert, Select [Cancel] => Message: You clicked: Cancel
* JS Confirm: Accept Alert, Select [OK] => Message: You clicked: Ok
