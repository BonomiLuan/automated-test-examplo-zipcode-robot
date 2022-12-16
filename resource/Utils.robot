*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Library    os
Library    DateTime
Library    String
Library    OperatingSystem


### DATA ###
Resource    data/Url.robot


### REQUESTS ###
Resource    requests/PauliniaRequest.robot


### SETUP AND TEARDOWN ###



### STEPS ###
Resource    steps/PauliniaZipCodeStep.robot




