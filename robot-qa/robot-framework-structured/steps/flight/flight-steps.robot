*** Settings ***
Resource    ../../resource/settings.resource
Resource    ../../elements/main-elements.resource

*** Keywords ***
Quando eu realizo uma busca de um vôo ida e volta
    Wait Until Element Is Visible  ${home.a_voos}           20
    Click Element                  ${home.a_voos}
    Wait Until Element Is Visible  ${flight.Input_IdaeVolta}  20
    Click Element                  ${flight.Input_IdaeVolta}


E saindo de ${Texto}
    Wait Until Element Is Visible  ${flight.Input_Ida}  20
    Input Text                     ${flight.Input_Ida}  ${Texto}
    Press Keys                     ${flight.Input_Ida}  ARROW_DOWN
    Press Keys                     ${flight.Input_Ida}  ENTER 