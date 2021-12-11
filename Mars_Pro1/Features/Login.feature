Feature: SignIn
In order to add profile details
As a registered member
Seller has to login with correct credentials

@Home
Scenario: Seller wants to access Mars website
    Given Seller Launch Chrome Browser
    When He enters the Home URL 
    And Presses Enter key
    Then Load the Homepage 
    And SignIn link should appears on the Homepage

@Home@SignIn
Scenario Outline: Seller entering correct credentials to SignIn
	Given Seller is on the Homepage and has registered himself
	When He enters his correct <emailaddress> and <password>
	And Clicks on Login Button
	Then Redirects him to his Profile page
    And Then He should see the message "Welcome", <firstname>
    Examples: 
    | emailaddress           | password    |
    | sidra_riz@yahoo.com    | sid6638659  |
	| riz.sidra@gmail.com    | askshr5710  |

@Home@SignIn
Scenario: Seller checks the RememberMe Checkbox to save his credentials details for future
   
    Given Seller has entered the correct credentials 
    When He checks the Remember me? checkbox
    And Clicks on SignIn button
    Then Verify the user credentials are showingup on next SignIn

@Home@SignIn
Scenario Outline: Seller entering Incorrect Credentials
    Given User enters <emailaddress> and <password> into the application
    When He clicks the Login Button
    Then He should be informed that login is unsuccessful by a <error message>

    Examples: 
    | emailaddress              | password          | error mesage                            |
    | sidra_riz@yahoo.com       | 123456            | Invalid emailaddress or password        |
    | sidra_riz@yahoo.com       | 67*5#sdd          | Invalid emailaddress or password        |
    | adc_123@gmail.com         | sid6638659        | Invalid emailaddress or password        |
    | sidra_riz@yahoo.com       |                   | password is mandatory                   |
    |                           |                   | emailaddress and password are mandatory |
    |                           | sid6638659        | emailaddress is mandatory               |
    | sidra_riz@yahoo.com       | sid6628659        | Invalid emailaddress or password        |
    | sidra-riz@yahoo.com       | sid6638659        | Invalid emailaddress or password        |
    | $%#@#$sidra_riz@yahoo.com | %#*#**#sid6638659 | Invalid emailaddress or password        |
    | SIDRA_RIZ@YAHOO.COM       | SID6638659        | Invalid emailaddress or password        |



@Home@Join
Scenario Outline: User wants to Create Account to Join.
       
   Given User is on Home page 
   And He has clicked the Join link
   When He completes the form with <firstname> <lastName> <emailaddress> <password> and <confirmpassword> 
   And checked the Terms and conditions box
   And He clicks the Join button
   Then Successful registeration message should display
   And Directed to the Profile page.

@Home@ForgotmyPassword
 Scenario: Seller forgets his password and resetting password using Forgot password Link
    
    Given Seller Clicks on Forgot password link
    And Email Verification page is loaded
    When He enters the valid email address
    And Clicks on Send Verification Email button
    Then password reset email should be sent
    And "Email has been sent" message should be displayed
    And Verify Email is delivered to the correct email address
   
@Home@ForgotmyPassword
Scenario: Seller recalling his password and wants to go back to Signin page
    
    Given Seller is on Forgot password link
    When He Clicks Remember your password link?
    Then He should be directed to SignIn page
     
@Home@Signout
Scenario: Successful Signout
	When User SignOut from the Application
	Then Successful SignOut message should display


@Home@SignIn@CrossbrowerTesting
Scenario: Seller accessing Mars from different versions of Chrome browser
      
     Given Seller has entered application url in browser
     When Seller entering Mars URL in chrome browser of <version>
     | version   |
     | 95.0.4638 |
     | 96.0.4664 |
     | 97.0.4692 |
     | 98        |
      And Presses the Enter Key
      Then The Login feature should work the same way in all web version

@Home@SignIn@PerformanceTesting
Scenario: Checking the Login screen is loading without delays or within the defined time

    Given User has installed correct browser version
    When He enters the Home URL and presses Enter
    Then Home Page should be loaded within standard time of 5-10 seconds

 @Home@SignIn@CompatabilityTesting
 Scenario: Seller logging In from his Mobile or Tab

 Given User has installed correct browser version
 When User is Logging in with the valid emailaddress and password in the mobile application
 Then Login functionality should work properly in Tab and <Mobile>
 | Mobile          |
 | Iphones version |


