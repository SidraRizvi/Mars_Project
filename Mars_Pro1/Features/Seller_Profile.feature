Feature: Seller[]AddProfileDetails
	As a Seller I want to add some detail to my Profile
	And want buyers to view the added details on visiting my Profile

@Home@SignIn@Profile
Scenario: I want to access AddNew Skills page
	Given I have registered myself
	And I have signed in succesfully
	And On Profile page Language Tab is selected by default
	When I click on Skills Tab
	Then I should be directed to the Skills Dashboard
	And Add and Cancel Button should be visible

@Home@Profile@SkillTab@AddNewSkill
Scenario Outline: I want to add new Skills to my Profile
  Given I am on Skills Tab of my Profile Page
  And My previously added Skills are listed below
  And Skill TxtBox,Choose Skill Level DropDown,Add and Cancel Buttons are visible
  When I enter <Skill> in the TxtBox and selects any <Level> from DropDown List
  And I Click Add Button 
  Then Verify that the Skill has been added sucessfully to my Skillset
  And <Message box> should be displayed
  And Message box should disppear within 3 seconds
  And AddNew Button should be visible for adding another skill
 

  Examples:
  | Skill             | Level        | Message box                                    |
  |                   |              | Please enter skill and experience level        |
  | Graphic Design    |              | Please enter skill and experience level        |
  |                   | Exert        | Please enter skill and experience level        |
  | Graphic Design    | Beginners    | Graphic Deign has been added to your skills    |
  | Digital Marketing | Beginners    | Digital Marketing has been added to your skills|
  | Graphic Design    | Beginners    | This skill already exist in your skill list    |
  | Graphic Design    | Intermediate | Duplicated Data                                |
  | Graphic Design    | Expert       | Duplicated Data                                |


@Home@Profile@SkillTab@CancelSkill
Scenario: I want to Cancel the AddSkill request
Given I am on Add New Skill page
When I click the Cancel Button
Then Redirects Me to Skill Tab on Profile page

@Home@Profile@SkillTab@EditSkill
Scenario Outline: I want to update my skills 
Given I am on the Skill tab on my Profile page
And I have Clicked the Edit Icon of the record to be edited
When I Enter the updated <Skill> OR <Level>
And Clicks the Update Button
Then Profile details should be updated
And Message box should be displayed saying the skill has been updated

  | Skill             | Level        | Message box                                       |
  | Graphic Design    | Intermediate | Graphic Deign has been updated to your skills     |
  | Graphic Design    | Intermediate | This skill is already added to your skill list    |
  | Digital Marketing | Intermediate | This skill is already added to your skill list    |
  | Digital Marketing | Expert       | Digital Marketing has been updated to your skills |
  | Digital Marketing | Beginners    | Digital Marketing has been updated to your skills |  
  | Graphic Design    | Skill Level  | Please enter skill and experience level           |  
  |                   | Expert       | Please enter skill and experience level           |

@Home@Profile@SkillTab@DeleteSkill
Scenario: I wants to delete my previously added Skill

Given I am on the Skill tab on my Profile page
And I have Clicked the Delete Icon of the last record
When I Click the Delete Icon
Then Verify the last record is deleted
And Message box should be popped up saying "Digital Marketing has been deleted"

@Home@Profile@SkillTab
Scenario:I should be able to view all added skills on my Profile page

Given I am on my Profile page after successfully SignedIn
And Language Description form is available
When I Click on Skills Tab
Then My previously added Skills should be displayed
And Addnew Button should be visible
And Edit/Delete Icons should be visible
