***Settings***
Documentation     Present some information about this test suit
Library                 Selenium2Library
Suite Teardown     close Browser
***Variable***
${Browser}   Firefox

***Test Cases***
Guest must sign in to check out
	Open Browser   http://www.amazon.com  ${Browser}
	Wait Until Page Contains  Amazon.com
	Input Text  id=twotabsearchtextbox   Ferrari 458
	Click Element   //input[@value="Go"]
	Wait Until Page Contains    "Ferrari 458"
