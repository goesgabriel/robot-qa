*** Settings ***
Library    SeleniumLibrary
*** Variables ***
# test data - test dada mass
${song-name}    "Ariane Grande Positions"

# youtube link
${url-youtube}    https://www.youtube.com/

# browser
${google-chrome}    chrome

# locators
${search-field}    //input[@id='search']
${search-button}    id:search-icon-legacy
${first-video-title-on-the-page}    (//yt-formatted-string[@class='style-scope ytd-video-renderer'])[1]
${subscribe-button}    id:subscribe-button-shape

*** Keywords ***
I access youtube site
    Open Browser    ${url-youtube}    ${google-chrome}
I search for some song
    Wait Until Element Is Visible    ${search-field}    10
    Input Text    ${search-field}  ${song-name}
I click on search button
    Click Button    ${search-button}
I click on the 1st option in the result list
    Wait Until Element Is Visible    ${first-video-title-on-the-page}    10
    Click Element    ${first-video-title-on-the-page}
the video page is opened
    Wait Until Element Is Visible    ${subscribe-button}
    Element Should Be Visible    ${subscribe-button}

*** Test Cases ***
Scenario 1: Play YouTube Video
    [Tags]  test
    Given I access youtube site
    When I search for some song
    And I click on search button
    And I click on the 1st option in the result list
    Then the video page is opened