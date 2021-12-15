using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TechTalk.SpecFlow;

namespace Mars_Pro1.Hooks
{
    [Binding]
    public sealed class WebHooks
    {
           
        

       

        [BeforeScenario]
        public void BeforeScenario()
        {  
           IWebDriver Driver;
           Driver = new ChromeDriver();
            //helpul during debugging - 
                     
            Driver.Manage().Window.Maximize();
        }

        [AfterScenario]
        public void AfterScenario()
        {
           // IWebDriver Driver;
           // Driver.Quit();
        }

    }
}
