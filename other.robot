*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify work of BreadCrumbs
    Do Search
    Launch Second Microservice
    Launch third microservice
    Go To Home Page
    Go To Vacancies Page
    Go To Words Page

Verify Logo
   Do Search
   Launch Second Microservice
   Click Link  css=body > header > nav > a
   Wait Until Element Is Visible   ${TABLE}

Verify Checkboxes
    Do Search
    Launch Second Microservice
    Launch third microservice
    Selecting Checkbox


