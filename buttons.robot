*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify Proceed button
    Do Search
    Click Link  ${PROCEED_B}
    Page Should Contain Element  ${TABLE}
    Click Link  ${PROCEED_B}
    Wait Until Element Is Visible   ${CHECKBOX}

Verify Save button                    #It's FAIL, because "SAVE" button works incorectlly
    Do Search
    Launch Second Microservice
    Launch Third Microservice
    Select Checkbox   ${CHECKBOX}
    Click Button  ${SAVE}
    Checkbox Should Be Selected  ${CHECKBOX}