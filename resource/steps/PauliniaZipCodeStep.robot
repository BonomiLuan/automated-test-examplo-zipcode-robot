*** Settings ***
Resource    ../Utils.robot

*** Variables ***

*** Keywords ***
Given the user want to know the the address of this zip code
    Create Session    mysession    ${base_url.zipcode_api}

When the user chooses the zip code
    ${RESPONSE}=    GET On Session    mysession    ${zipcode.zip}/${zipcode.format}
 
    Set Global Variable    ${RESPONSE}

Then the address should be shown
    ${response_json}=    Convert String To Json    ${RESPONSE.content}
    ${status_code}=    Convert To String    ${RESPONSE.status_code}
    Should Be Equal    ${status_code}    200
    
    ${city_value}=    Get Value From Json    ${response_json}    $.localidade
    ${state_value}=    Get Value From Json    ${response_json}    $.uf
    ${zipcode_value}=    Get Value From Json    ${response_json}    $.cep

    Should Be Equal    ${city_value[0]}    Paulínia
    Should Be Equal    ${state_value[0]}    SP
    Should Be Equal    ${zipcode_value[0]}    13140-770

    Log To Console    CITY = ${city_value[0]}
    Log To Console    STATE = ${state_value[0]}
    Log To Console    ZIP CODE = ${zipcode_value[0]}