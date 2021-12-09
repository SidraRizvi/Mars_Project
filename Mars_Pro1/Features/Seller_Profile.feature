Feature: Seller_Profile
	Seller wants to add some skills to his profile 

@Home@SignIn@Profile
Scenario: Seller wants to add skills
	Given the user has signed in succesfully
	And On Profile page
	When user click on Skills Tab
	Then directed to the Skills Dashboard

@Home@Profile
Scenario: Seller Adding skills details to his profile
Given the user is on Skills tab
When He provides <Skill description> <Skill level> details
And Clicks Add New Button 
Then Message box should be popped up saying the skill has been added
And Added skill should be reflected on the Skill tab

@Home@Profile
Scenario: Seller wants to cancel the Add Skill request
Given the user is on Add Skill page
When User clicks the cancel button
Then Redirects the user to Profile page

@ome@Profile
Scenario: Seller wants to update his skill
Given User is on the Skill tab on his Profile page
When User Clicks the Edit Icon
And He Enters the updated <Skill> OR <Level>
And Clicks the Update Button
Then Profile details should be updated

@Home@Profile
Scenario: Seller wants to delete his skill

Given User is on the Skill tab on his Profile page
When User Clicks the Delete Icon
Then Selected Skill should be deleted