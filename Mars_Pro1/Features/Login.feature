Feature: SignIn
In order to add profile details
As a registered member
Seller has to login with correct credentials

@Home
Scenario: SignIn Link Exists
    Given Seller has navigated to Homepage
    When the Mars Project Homepage loads
    Then SignIn link appears on the Homepage


@Home@SignIn
Scenario: Login with correct credentials
	Given Seller is on Homepage and has registered himself
	When He enters his correct <emailaddress> and <password>
	| field        | value               |
	| Emailaddress | sidra_riz@yahoo.com |
	| password     | sid6638659          |
	And Clicks on the Login Button
	Then Redirects seller to his profile page
    And Validates his name on his profile page

@Home@SignIn
Scenario: Unsuccessful login on entering incorrect credentials
    Given Seller enters <emailaddress> and <password> into the application
    When He clicks the Login Button
    Then He should be informed that login is unsuccessful by a error message

    Examples: 
    | emailaddress        | password   |
    | sidra_riz@yahoo.com | 123456     |
    | sidra_riz@yahoo.com | 67*5#sdd   |
    | adc_123@gmail.com   | sid6638659 |
    | sidra_riz@yahoo.com |            |
    |                     |            |
    |                     | sid6638659 |
    
@Home@Join
Scenario: User want to Create Account to Join.
       
   Given User is on Home page 
   And He has clicked the Join link
   When He completes the form with <firstname> <lastName> <emailaddress> <password> and <confirmpassword> 
   And checked the Terms and conditions box
   And He clicks the Join button
   Then User should be sucessfully registered
   And Directed to the Profile page.