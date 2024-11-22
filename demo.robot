*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        headlesschrome
${SEARCH_ENGINE}  https://www.google.com
${SEARCH_QUERY}   Robot Framework

*** Test Cases ***
Google Search in Headless Mode
    [Documentation]    Verify Google search functionality in headless mode.
    Open Browser    ${SEARCH_ENGINE}    ${BROWSER}
    Maximize Browser Window
    Input Text    name:q    ${SEARCH_QUERY}
    Press Keys    name:q    RETURN
    Wait Until Page Contains    Robot Framework
    Capture Page Screenshot
    Close Browser
