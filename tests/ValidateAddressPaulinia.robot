*** Settings ***
Resource    ../resource/Utils.robot


*** Test Cases ***
TC01 - Validating the address of this zip code
    Given the user want to know the the address of this zip code
    When the user chooses the zip code
    Then the address should be shown