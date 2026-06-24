*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   ../resources/common_keywords.robot

Suite Setup    Create Session To API

*** Test Cases ***

Get User Details - Valid User
    ${response}=    Get Request    /users/2
    Validate Status Code    ${response}    200
    Should Contain    ${response.text}    email
