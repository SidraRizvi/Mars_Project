using System;
using System.Collections.Generic;
using System.Text;
using TechTalk.SpecFlow;

namespace Mars_Pro1.Steps
{
   [Binding]
    class Loginsuccesfulsteps
    {
        [Given(@"Seller is on the Homepage and has registered himself")]
        public void GivenSellerIsOnTheHomepageAndHasRegisteredHimself()
        {
            
        }

        [When(@"He enters his correct (.*) and (.*)")]
        public void WhenHeEntersHisCorrectAnd(string p0, string p1, Table table)
        {
            ScenarioContext.Current.Pending();
        }


        [When(@"He enters his correct emailaddres and password")]
        public void WhenHeEntersHisCorrectEmailaddresAndPassword(Table table)
        {
            
        }

        [When(@"Clicks on the Login Button")]
        public void WhenClicksOnTheLoginButton()
        {
            
        }

        [Then(@"Redirects seller to his profile page")]
        public void ThenRedirectsSellerToHisProfilePage()
        {
            
        }

        [Then(@"Validates his name on his profile page")]
        public void ThenValidatesHisNameOnHisProfilePage()
        {
           
        }



    }
}
