*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify change Status in the table of “Home” page
    Do Search
    Launch Second Microservice
    Go To Home Page
    Open Edit In The Table Of “Home” Page
    Change Status In The Table Of “Home” Page
    Click Button  ${SAVE_HEB}
    Page Should Contain  in progress

Verify change Title in the tables of “Home” page
    Do Search
    Launch Second Microservice
    Go To Home Page
    Open Edit In The Table Of “Home” Page
    Edit Title In The Table Of “Home” Page
    Click Button  ${SAVE_HEB}
    Page Should Contain  React React

Verify editing all data in the tables of “Home” page
    Do Search
    Launch Second Microservice
    Go To Home Page
    Open Edit In The Table Of “Home” Page
    Change Status In The Table Of “Home” Page
    Edit Title In The Table Of “Home” Page
    Click Button  ${SAVE_HEB}
    Page Should Contain  in progress	React React

Verify change Status of data in the table “Vacancies” page
    Do Search
    Launch Second Microservice
    Open Edit In The Table Of “Vacancies” Page
    Change Status In The Table Of “Vacancies” Page
    Click Button  ${SAVE_VEB}
    Page Should Contain  in progress

Verify change Title in the tables of “Vacancies” page
    Do Search
    Launch Second Microservice
    Open Edit In The Table Of “Vacancies” Page
    Edit Title In The Table Of “Vacancies” Page
    Click Button  ${SAVE_VEB}
    Page Should Contain  React React

Verify change Company of data in the table “Vacancies” page
    Do Search
    Launch Second Microservice
    Open Edit In The Table Of “Vacancies” Page
    Edit Company In The Table Of “Vacancies” Page
    Click Button  ${SAVE_VEB}
    Page Should Contain  SoftBistro

Verify change Location of data in the table “Vacancies” page
    Do Search
    Launch Second Microservice
    Open Edit In The Table Of “Vacancies” Page
    Edit Location In The Table Of “Vacancies” Page
    Click Button  ${SAVE_VEB}
    Page Should Contain  Khmelnytskyi

Verify editing all data in the tables of “Vacancies” page
    Do Search
    Launch Second Microservice
    Open Edit In The Table Of “Vacancies” Page
    Change Status In The Table Of “Vacancies” Page
    Edit Title In The Table Of “Vacancies” Page
    Edit Company In The Table Of “Vacancies” Page
    Edit Location In The Table Of “Vacancies” Page
    Click Button  ${SAVE_VEB}
    Page Should Contain  React React	SoftBistro

Verify reviewing job description
    Do Search
    Launch Second Microservice
    Click Link  css=table > tbody > tr:nth-child(1) > td:nth-child(7) > a:nth-child(3)
    Wait Until Element Is Visible  css=#description > div
    Click Element  css=#description > div > a
    Page Should Contain Element  ${TABLE}

Verify deleting data in the tables of “Home” page
    Do Search
    Launch Second Microservice
    Go To Home Page
    Click Link  css=table > tbody > tr:nth-child(1) > td:nth-child(6) > a.btn.delete_btn

Verify deleting data in the tables of “Vacancies” page
    Do search
    Launch Second Microservice
    Click Link  css=table > tbody > tr:nth-child(1) > td:nth-child(7) > a.btn.delete_btn

Verify deleting data in the tables of “Words” page
    Do Search
    Launch Second Microservice
    Launch Third Microservice
    Click Link  css=table > tbody > tr:nth-child(1) > td:nth-child(6) > a