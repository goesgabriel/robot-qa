*** Settings ***
# import libraries (selenium, appium, json, etc)
# if I want to import some library, I should install the library first
Library    SeleniumLibrary

*** Variables ***
${variavel1}    teste

*** Keywords ***
# Keywords are like the steps, they can be used across many different tests
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

Open Google WebSite
    Open Browser     https://www.google.com/    chrome
Open Globo WebSite
    Open Browser    https://www.globo.com/    chrome
Close Navigator
    Close Browser

*** Test Cases ***
Scenario 1: Open google test
    Open Google WebSite
    Close Navigator

Scenario 2: Open Globo test
    Open Globo WebSite
    Close Navigator
