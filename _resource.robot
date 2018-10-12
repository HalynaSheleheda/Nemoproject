*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}    Chrome
${URL}        http://localhost/
${SEARCH_F}   css=.search-bar > input
${PROCEED_B}  css=div > a
${TABLE}      css=div > table
${CHECKBOX}   css=td:nth-child(1) > input[type="checkbox"]
${SAVE}       css=div > form > button
${EDIT_H}     css=table > tbody > tr:nth-child(1) > td:nth-child(6) > a.btn.edit_btn
${POPUP}      css=#popup > div
${STATUS}     css=#popup > div > form > div:nth-child(2) > select
${TITLE}      css=#popup > div > form > div:nth-child(3) > input[type="text"]
${SAVE_HEB}   css=#popup > div > form > div:nth-child(4) > button
${EDIT_V}     css=table > tbody > tr:nth-child(1) > td:nth-child(7) > a.btn.edit_btn
${SAVE_VEB}   css=#popup > div > form > div:nth-child(6) > button
${HOME_P}     css= ul > li:nth-child(1) > a


*** Keywords ***
Prepare Test Environment
    Open Browser  ${URL}  ${BROWSER}

Do Search
    Input Text  ${SEARCH_F}  react
    Press Key   ${SEARCH_F}  \\13
    Wait Until Element Is Visible  ${TABLE}

Launch Second Microservice
    Click Link  ${PROCEED_B}
    Wait Until Element Is Visible  ${TABLE}

Launch Third Microservice
    Click Link  ${PROCEED_B}
    Wait Until Element Is Visible   ${CHECKBOX}

Selecting Checkbox
    Select Checkbox   ${CHECKBOX}
    Checkbox Should Be Selected  ${CHECKBOX}

Go To Home Page
    Click Link  ${HOME_P}
    Wait Until Element Is Visible  ${TABLE}

Go To Vacancies Page
    Click Link  css= ul > li:nth-child(2) > a
    Wait Until Element Is Visible  ${TABLE}

Go To Words Page
    Click Link  css= ul > li:nth-child(3) > a
    Wait Until Element Is Visible  ${TABLE}

Open Edit In The Table Of “Home” Page
    Click Link  ${EDIT_H}
    Wait Until Element Is Visible  ${POPUP}

Change Status In The Table Of “Home” Page
    Select From List By Index  ${STATUS}  1

Edit Title In The Table Of “Home” Page
    Input Text  ${TITLE}  React React

Open Edit In The Table Of “Vacancies” Page
    Click Link  ${EDIT_V}
    Wait Until Element Is Visible  ${POPUP}

Change Status In The Table Of “Vacancies” Page
    Select From List By Index  ${STATUS}  1

Edit Title In The Table Of “Vacancies” Page
    Input Text  ${TITLE}  React React

Edit Company In The Table Of “Vacancies” Page
    Input Text  css=#popup > div > form > div:nth-child(4) > input[type="text"]  SoftBistro

Edit Location In The Table Of “Vacancies” Page
    Input Text  css=#popup > div > form > div:nth-child(5) > input[type="text"]  Khmelnytskyi
