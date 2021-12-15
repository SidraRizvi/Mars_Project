Feature: SignIn
In order to add profile details
As a registered member
Seller has to login with correct credentials

@Home
Scenario: I want to access Mars website
    Given I Launch Chrome Browser
    When I enter the Home URL 
    And Presses Enter key
    Then Homepage should be displayed
    And Sign In link should appear on the Homepage
    And Join Button should appear on the Homepage
    
@Home@SignIn@Autoamte
Scenario: When I enter correct credentials I should be successfully loginIn
	Given I am on the SignIn page
	When I enter "sidra_riz@yahoo.com" in username and "sid6638659" in password field
	And I Click on Login Button
    Then I should successfully login 
	
   
@Home@SignIn
Scenario: When I checks the RememberMe Checkbox my credentials details should be saved for future
   
    Given I entered the correct credentials 
    When I check the Remember me? Checkbox
    And Click on SignIn button
    Then Verify my credentials are showingup on next SignIn

@Home@SignIn
Scenario Outline: When I enter Incorrect Credentials an error message should be displayed
    Given I enter <emailaddress> and <password> into the application
    When I click the Login Button
    Then I should be informed that login is unsuccessful by an <error message>

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
Scenario Outline: On filling my details on Joining form my new account should be created
       
   Given I am on Join page
   When I complete the form with <firstname> <lastname> <emailaddress> <password> and <confirmpassword> details
   And Check the Terms and conditions box
   And I Clicks the Join button
   Then <message> should be displaed
   And Directed to the Profile page

   Examples:   
      | firstname | lastname | emailaddress        | password   | confirmpassword | message                                                 |
      | 123456    | Rizvi    | sidra_riz@yahoo.com | sid6638659 | sid6638659      | Names must contain at least one letter                  |
      | #$%@#     | Rizvi    | sidra_riz@yahoo.com | sid6638659 | sid6638659      | Names must contain at least one letter                  |
      |           | Rizvi    | sidra_riz@yahoo.com | sid6638659 | sid6638659      | This is a required field                                |
      | 123$@^    | Rizvi    | sidra_riz@yahoo.com | sid6638659 | sid6638659      | Names must contain at least one letter                  |
      | Sidra     | Rizvi    | sidra_riz@yahoo.com | sid6638659 | sid6638659      | Registeration sucessful                                 |
      | Sidra     | Rizvi    | sidra_riz@yahoo.com | sid6638659 | sid6638659      | This name has already been used to register an account  |
      | Sidra     | 123456   | sidra_riz@yahoo.com | sid6638659 | sid6638659      | Names must contain at least one letter                  |
      | Sidra     | #$%@#    | sidra_riz@yahoo.com | sid6638659 | sid6638659      | Names must contain at least one letter                  |
      | Sidra     | 123$@^   | sidra_riz@yahoo.com | sid6638659 | sid6638659      | Names must contain at least one letter                  |
      | Sidra     |          | sidra_riz@yahoo.com | sid6638659 | sid6638659      | This is a required field                                |
      | Sidra     | Rizvi    | sidra_riz@yahoo.com | sid6638659 | sid6638659      | This email has already been used to register an account |
      | Sidra     | Rizvi    | abcd@123.com        | 123456     | 123456          | This email is not valid                                 |
      | Sidra     | Rizvi    | abcd123.com         | 123456     | 123456          | Please enter a valid email address                      |
      | Sidra     | Rizvi    |                     | 123456     | 123456          | This is a required field                                |
      | Sidra     | Rizvi    | sidra_riz@yahoo.com | 12345      | 12345           | Password must be at least 6 characters                  |
      | Sidra     | Rizvi    | sidra_riz@yahoo.com |            |                 | These fields are required                               |
      | Sidra     | Rizvi    | sidra_riz@yahoo.com | 1234567    | 123456          | password does not match password                        |
      | Sidra     | Rizvi    | sidr_riz@yahoo.com  | 123&*%     | 123&*%          | Registeration sucessful                                 |
      | Sidra     | Rizvi    | sidra_riz@yahoo.com | 123456     | 1234567         | Does not match password                                 |


@Home@Join@SignIn
Scenario: When I am on Join page and want to SignIn instead of creating an account then SignIn page should be available.
       
   Given I am on Join page 
   And SignIn link is available
   When I Click on SignIn link
   Then Directs me to the SignIn page

@Home@ForgotmyPassword
 Scenario: When I forget my password then Forgot password Link should be available to reset it
     
    Given I Click on Forgot password link
    And Email Verification page is loaded
    When I enter the valid email address
    And Click on Send Verification Email button
    Then password reset email should be sent
    And "Email has been sent" message should be displayed
    And Verify Email is delivered to the correct email address
   
@Home@ForgotmyPassword@SignIn
Scenario: When I am on Forgot password page I should be directed to Signin page on recalling password.
    
    Given I am on Forgot password link
    When I Click Remember your password link?
    Then I should be directed to SignIn page
     
@Home@Profile@Signout
Scenario: When I click on Signout I should be Successfully Signout from the application
	Given I am on Profile Page
    And SignOut page is available
    When I Click SignOut Button 
	Then I should be Signout successfully from the application
    
@Home@SignIn@CrossbrowerTesting
Scenario Outline: I should be getting the same view on accessing Mars from different versions of Chrome browser
      
     Given I have installed the correct chrome browser
     When I enter Home URL in chrome browser of <version>
     And Presses the Enter Key
     Then The Login feature should work the same way in all web version
    
    Examples: 
     | version   |
     | 95.0.4638 |
     | 96.0.4664 |
     | 97.0.4692 |
     | 98        |

@Home@SignIn@PerformanceTesting
Scenario: When I enter URl, the Login screen should be loaded within the defined time

    Given I have installed correct browser version
    When I enter the Home URL and presses Enter
    Then Home Page should be loaded within standard time of 5-10 seconds

 @Home@SignIn@CompatabilityTesting
 Scenario:When I Sign In from my Mobile/Desktop/Tablet, application should work properly in differen platforms 

 Given User has installed correct browser version and other prerequist
 When User is Logging in from different platforms
 Then Login functionality should work properly the same
 


