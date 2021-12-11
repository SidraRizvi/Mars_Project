Feature: Seller_Profile
	Seller wants to add some skills to his profile 

@Home@SignIn@Profile
Scenario: Seller wants to add skills
	Given the user has signed in succesfully
	And On Profile page
	When user click on Skills Tab
	Then directed to the Skills Dashboard

@Home@Profile@Skill@AddNewSkill
Scenario Outline: Seller Adding skills details to his profile
 Given User selects Edit > New Skill from the Skill Tab
  And The Skill New form is visible 
  When He enters <Skill> in the text box and selects any <Level> from dropdown List
  And Clicks Add Button 
  Then <Message box> should be popped
  And AddNew Button should be visible for adding another skill
  And Update Button should be visible

  Examples:
  | Skill             | Level        | Message box                             |
  |                   |              | Please enter skill and experience level |
  | Video & Animation |              | Please enter skill and experience level |
  |                   | Exert        | Please enter skill and experience level |
  |Graphic Design     | Beginners    | Graphic Deign has been added to your skills    |
  | Digital Marketing |Beginners     | Digital Marketing has been added to your skills|
  | Graphic Design    | Beginners    | This skill already exist in your skill list    |
  | Graphic Design    | Intermediate | Duplicated Data                                |
  | Graphic Design    | Expert       | Duplicated Data                                |


@Home@Profile@SkillTab@CancelSkill
Scenario: Seller wants to cancel the Add Skill request
Given the user is on Add New Skill page
When User clicks the cancel button
Then Redirects the user to Skill tab on Profile page

@ome@Profile@SkillTab@EditSkill
Scenario: Seller wants to update his skill
Given User is on the Skill tab on his Profile page
When User Clicks the Edit Icon
And He Enters the updated <Skill> OR <Level>
And Clicks the Update Button
Then Profile details should be updated
And Message box should be displayed saying the skill has been updated
But "This skill is already added to your skill list" Msg box should be displayed on entering same skill with same level

@Home@Profile@SkillTab@DeleteSkill
Scenario: Seller wants to delete his skill

Given User is on the Skill tab on his Profile page
When User Clicks the Delete Icon
Then Selected Skill should be deleted
And Message box should be popped up saying the skill has been deleted

@Home@Profile@SkillTab
Scenario: Seller should be able to view all added skills on his Profile page

Given User is on his Profile page
And Language Description form is available
When User Clicks on Sills Tab
Then All his added Skills should be displayed
And Addnew Button should be  available
And Edit/Delete Icons should be available
