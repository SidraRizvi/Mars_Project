Feature: Signout
	Seller wants to Signout from Mars website

@Logout
Scenario: Successful Signout
	When User SignOut from the Application
	Then Successful SignOut message should display