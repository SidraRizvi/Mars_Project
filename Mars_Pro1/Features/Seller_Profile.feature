Feature: Seller[]AddProfileDetails
	As a Seller I want to add some detail to my Profile
	And want buyers to view the added details on visiting my Profile

@Home@SignIn@Profile
Scenario: I want to access Language Tab 
	Given I have registered myself
	And I have signed in succesfully
	And On Profile page Language Tab is selected by default
	When I click on Language Tab
	Then  Add New Button should be visible
	And I should be able to see my previously added Languages on the page

@Home@Profile@LanguageTab@AddNewLanguage
Scenario Outline: I want to add new Language to my Profile
  Given I am on Language Tab of my Profile Page
  And My previously added Skills are listed below
  And Add Language TxtBox,Choose Language Level DropDown,Add and Cancel Buttons are visible
  When I enter <Add Language> in the TxtBox and selects any <Language Level> from DropDown List
  And I Click Add Button 
  Then Verify that the Skill has been added sucessfully to my Skillset
  And <Message box> should be displayed
  And Message box should disppear within 3 seconds
  And AddNew Button should be visible for adding another language
 
   Examples:

  | Add Language | Language Level | Message box                                          |
  | English      | Basic          | English has been added to your languages             |
  | English      | Conversational | Duplicated data                                      |
  | English      | Fluent         | Duplicated data                                      |
  | English      | Native         | Duplicated data                                      |
  | English      | Basic          | This language is already exist in your language list |
  | French       | Basic          | French has been added to your languages              |
  | German       | Conversational | German has been added to your languages              |
  | Spanish      | Conversational | Spanish has been added to your languages             |
  
@Home@Profile@LanguageTab@CancelLanguage
Scenario: I want to Cancel the AddLanguage request
Given I am on Add New Language page
When I click the Cancel Button
Then Redirects Me to Language Tab on Profile page

@Home@Profile@LanguageTab@EditLanguage
Scenario Outline: I want to update my Language level
Given I am on the Language tab on my Profile page
And I have Clicked the Edit Icon of the record to be edited
When I Enter the updated <Language> OR <Level>
And I Click the Update Button
Then Profile details should be updated
And <Message box> should be displayed 

 Examples:
  | Skill             | Level        | Message box                                    |
  |                   |              | Please enter skill and experience level        |
  | English           |              | Please enter skill and experience level        |
  |                   | Basic        | Please enter skill and experience level        |
  | English           | Fluent       | English has been added to your language        |
  | French            | Fluent       | Frencch has been added to your language        |
  | English           | Fluent       | This skill already exist in your language list |
  | French            | Fluent       | Duplicated Data                                |
 
 @Home@Profile@LanguageTab
 Scenario: The Add New Button should disappear on entering the fourth Language 

Given I am on the Add new Button Tab
When I Enter the fourth Language
Then Verify the Add New Button disappear 

@Home@Profile@LanguageTab@DeleteLanguage
Scenario: I want to delete my previously added Language

Given I am on the Language tab on my Profile page
And I have Clicked the Delete Icon of the record to be deleted
When I Click the Delete Icon
Then Verify the record is deleted
And Message box should be dispalyed

@Home@Profile@LanguageTab
Scenario:I should be able to view all added languages on my Profile page

Given I have entered the correct credentials
When I logged in the application
Then Laguage Tab should be active by default
And My previously added Language should be displayed

@Home@SignIn@Profile
Scenario: I want to access Skills Tab
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
Scenario: I want to delete my previously added Skill

Given I am on the Skill tab on my Profile page
And I have Clicked the Delete Icon of the record to be deleted
When I Click the Delete Icon
Then Verify the record is deleted
And Message box should be displayed

@Home@Profile@SkillTab
Scenario:I should be able to view all added skills on my Profile page

Given I am on my Profile page after successfully SignedIn
And Language Description form is available
When I Click on Skills Tab
Then My previously added Skills should be displayed
And Addnew Button should be visible
And Edit/Delete Icons should be visible

@Home@SignIn@Profile
Scenario: I want to access Education Tab 
	Given I have registered myself
	And I have signed in succesfully
	And On Profile page Language Tab is selected by default
	When I click on Education Tab
	Then  Add New Button should be visible
	And I should be able to see my previously added Education on the page

@Home@Profile@EducationTab@AddNew
Scenario Outline: I want to add new Education to my Profile
  Given I am on Education Tab of my Profile Page
  And My previously added Educational Background are listed below
  When I enter <College/University Name> in the TxtBox and selects <Country of University> from DropDown List
  And I enter <Title> from Dropdown <degree> in Textbox <Year Of Graduation> from Dropdown
  And I Click Add Button 
  Then Verify that the education details has been added sucessfully to my Skillset
  And <Message box> should be displayed
  And Message box should disppear within 3 seconds
  And AddNew Button should be visible for adding another 
   
 @Home@Profile@EducationTab@CancelEducation
 Scenario: I want to Cancel the AddEduaction request
 Given I am on Add Education page
 When I click the Cancel Button
 Then Redirects Me to Education Tab on Profile page

@Home@Profile@EducationTab@EditEducation
Scenario Outline: I want to update my Language level
Given I am on the Language tab on my Profile page
And I have Clicked the Edit Icon of the record to be edited
When I Enter the updated <Language> OR <Level>
And I Click the Update Button
Then Profile details should be updated
And <Message box> should be displayed

@Home@Profile@SkillTab@DeleteEducation
Scenario: I want to delete my previously added Education details

Given I am on the Education tab on my Profile page
And I have Clicked the Delete Icon of the record to be deleted
When I Click the Delete Icon
Then Verify the record is deleted
And Message box should be displayed

@Home@Profile@EducationTab
Scenario:I should be able to view all added education details on my Profile page

Given I am on my Profile page after successfully SignedIn
And Language Description form is available
When I Click on Education Tab
Then My previously added Education details should be displayed
And Addnew Button should be visible
And Edit/Delete Icons should be visible

@Home@SignIn@Profile
Scenario: I want to access certification Tab
	Given I have registered myself
	And I have signed in succesfully
	And On Profile page Language Tab is selected by default
	When I click on Certificate Tab
	Then  Add New Button should be visible
	And I should be able to see my previously added Certificate on the page

@Home@Profile@CertificateTab@AddNewCertificate
Scenario Outline: I want to add new Certificate to my Profile
  Given I am on Certificate Tab of my Profile Page
  And My previously added Certificates are listed below
  When I enter <Certificate> in the TxtBox and selects any <Year> from DropDown List
  And I Click Add Button 
  Then Verify that the Certificate has been added sucessfully to my Skillset
  And <Message box> should be displayed
  And Message box should disppear within 3 seconds
  And AddNew Button should be visible for adding another Certificate
    
@Home@Profile@CertificationTab@CancelCertificate
Scenario: I want to Cancel the AddCertificate request
Given I am on Add New Certificate Tab
When I click the Cancel Button
Then Redirects Me to Certificate Tab on Profile page

@Home@Profile@CertificationTab@EditCertificate
Scenario Outline: I want to update my certificate details
Given I am on the Certificate tab on my Profile page
And I have Clicked the Edit Icon of the record to be edited
When I Enter the updated <Certificate><From><Year>
And I Click the Update Button
Then Profile details should be updated
And <Message box> should be displayed 

@Home@Profile@CertficationTab@DeleteCertification
Scenario: I want to delete my previously added Certifications
Given I am on the Certification tab on my Profile page
And I have Clicked the Delete Icon of the record to be deleted
When I Click the Delete Icon
Then Verify the last record is deleted
And Message box should popped up 

@Home@Profile@CertificationTab
Scenario:I should be able to view all added certificates on my Profile page

Given I have entered the correct credentials
When I logged in the application
And I click the Certificate Tab
Then My previously added Certifications should be displayed
