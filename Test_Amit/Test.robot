*** Settings***
# [Documentation]        Import all Library here
Library        Collections

*** Variables ***
@{listData}        Radha    Rani    Ka    Naam    Japo
&{dicData}         Name=Radha    Designation=Rani

*** Test Cases ***
Tc_001
    [Documentation]    List Operation
    [Tags]    list
    Append To List        ${listData}        Amit
    Log      ${listData}

