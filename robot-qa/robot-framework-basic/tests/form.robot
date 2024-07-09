*** Settings ***
# import libraries (selenium, appium, json, etc)
# if I want to import some library, I should install the library first
Library    SeleniumLibrary

*** Variables ***
${input_name_field}        id:firstName
${input_last_name_field}    id:lastName
${input_phone_field}        id:userNumber
${input_email_field}        id:userEmail
${gender_male}        //label[@class="custom-control-label"]
${calendar}        id:dateOfBirthInput
${calendar_date}        //div[text()='15']
${button_submit}        //button[@class='btn btn-primary']
${form_success}        id:example-modal-sizes-title-lg




*** Keywords ***
# Keywords are like the steps, they can be used across many different tests
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
Open the Navigator and access testing site
    Open Browser    https://demoqa.com/automation-practice-form    chrome
    Maximize Browser Window
Fill all available fields
    Input Text    ${input_name_field}         Jose
    Sleep    1s
    Input Text    ${input_last_name_field}    Silva
    Sleep    1s
    Input Text    ${input_phone_field}        1234567890
    Sleep    1s
    Input Text    ${input_email_field}        goesgabirin@gmail.com
    Sleep    1s
    Click Element    ${gender_male}
    Sleep    1s
    Click Element    ${calendar}
    Sleep    1s
    Click Element    ${calendar_date}
    Sleep    1s
Submit the form
        Scroll Element Into View    ${button_submit}
        Sleep    1s
        Click Element    ${button_submit}
        Sleep    1s
Check if form was sucessfully submited
        Wait Until Element Is Visible    ${form_success}
        Sleep    1s
Close the Navigator
    Close Browser


*** Test Cases ***
Scenario 1: Fill form
    Open the Navigator and access testing site
    Fill all available fields
    Submit the form
    Check if form was sucessfully submited
    Close the Navigator

