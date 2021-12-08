using System;
using TechTalk.SpecFlow;

namespace Mars_Pro1.Steps
{
    [Binding]
    public class LoginSteps
    {
        [Given(@"Seller is on Homepage and has registered himself")]
        public void GivenSellerIsOnHomepageAndHasRegisteredHimself()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"He enters his username and password")]
        public void WhenHeEntersHisUsernameAndPassword()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Click on the Login Button")]
        public void WhenClickOnTheLoginButton()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"validate his name on his profile page")]
        public void ThenValidateHisNameOnHisProfilePage()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
