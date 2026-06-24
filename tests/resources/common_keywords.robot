*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://reqres.in/api

*** Keywords ***
Create Session To API
    Create Session    mysession    ${BASE_URL}
