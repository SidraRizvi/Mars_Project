using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Text;
using TechTalk.SpecFlow;

namespace Mars_Pro1.Steps
{[Binding]
     class LogInTest
    {
               
        [Given(@"I am on the SignIn page")]
        public void GivenIAmOnTheSignInPage()
        {
            
            
        }

        [When(@"I enter ""(.*)"" in username and ""(.*)"" in password field")]
        public void WhenIEnterInUsernameAndInPasswordField(string p0, string p1)
        {
           
        }

        [When(@"I Click on Login Button")]
        public void WhenIClickOnLoginButton()
        {

        }

        [Then(@"I should successfully login")]
        public void ThenIShouldSuccessfullyLogin()
            {

            }

    }
}
