*** Settings ***
#Library           Selenium2Library
Resource          _resource.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Verify Search
    Do Search

Verify work of Search when entering invalid data    #It's FAIL, because there isn't message about invalid value yet
    Input Text  ${SEARCH_F}  123t$%#e@!$
    Press Key   ${SEARCH_F}  \\13
    Page Should Contain  Your value is invalid

Verify work of Search when entering nothing         #It's FAIL, because there isn't message about empty field yet
    Press Key   ${SEARCH_F}  \\13
    Page Should Contain  The fied is empty