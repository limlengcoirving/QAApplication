*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Feature: Send Application to Optimy
    Given Login to Application Site
    When Submit New Application
    Then Check Application Details

*** Keywords ***
Login to Application Site
    # open browser
    Open Browser                        https://qrqck8u5t9co.front.staging.optimy.net/en/          chrome
    Maximize Browser Window

    # click cookie warning
    Wait Until Element Is Visible       id:cookie-close
    Click Element                       id:cookie-close
    Wait Until Element Is Visible       class:btn-outline-primary
    Scroll Element Into View            class:btn-outline-primary
    Click Element                       class:btn-outline-primary

    # enter login
    Wait Until Element Is Visible       id:login-email
    Input Text                          id:login-email                        optimyautomationtester@gmail.com
    Input Password                      id:login-password                     2MsWseoj
    Click Element                       class:btn-primary

Submit New Application
    # submit new application
    Wait Until Element Is Visible       class:btn-primary
    Scroll Element Into View            class:btn-primary
    Click Element                       class:btn-primary
    Scroll Element Into View            class:btn-outline-primary
    Click Element                       class:btn-outline-primary

    # enter applicant details
    Wait Until Element Is Visible       id:06c8a27e-7d11-57b2-9286-af8fc8ba5b27
    Input Text                          id:06c8a27e-7d11-57b2-9286-af8fc8ba5b27     Bessie
    Input Text                          id:9d848df4-cdd0-50aa-820f-fdedcbda7e11     Walker
    Input Text                          id:c0dc660d-a5a9-5aab-a45a-6a0deb596bf2     JR
    Input Text                          id:852ff964-97c2-5ea0-9674-49b3f95d2e86::17540589-1aa5-5bf7-93fa-d49acf58b711   4629 Waterview Lane Albuquerque
    Scroll Element Into View            name:48b06bb5-8a4f-504e-93a7-2c5e888da553::5911b832-9522-524a-9f3c-8014c2ddba1c
    Press Keys                          name:48b06bb5-8a4f-504e-93a7-2c5e888da553::5911b832-9522-524a-9f3c-8014c2ddba1c     1000
    Sleep                               2s
    Click Element                       id:ui-id-2

    # choose country
    Select From List By Label           id:bf6f7c7f-1da5-55d7-99ac-2866e4a139fd     Belgium

    # upload photo
    Scroll Element Into View            name:Filedata
    Choose File                         name:Filedata                               C:/speedtest.jpg
    Sleep                               2s

    # choose gender
    Scroll Element Into View            id:container_254f1489-f589-50c5-a1cc-698f61546ccc
    Sleep                               2s
    Double Click Element                id:7950ee95-cb9c-554a-b6e6-8109544899f9

    # choose role
    Scroll Element Into View            id:field_cba99291-980c-5cb1-91c2-1db8d294587b
    Select From List By Label           id:field_cba99291-980c-5cb1-91c2-1db8d294587b       Manual + Automation tester

    # choose familiar tools / programming language
    Scroll Element Into View            id:container_73c26bc3-c6fb-5224-b962-b417331ee64c
    Click Element                       id:container_ddbeaca9-36c0-561e-8391-25c564bd4261
    Click Element                       id:container_60e2a93c-78a8-5f8f-ad08-fda1321f910d
    Click Element                       id:container_c091cd69-c9e0-54ad-ac9e-689cef43da77
    Click Element                       id:container_e6456bec-eb42-5d46-9cc5-af39cf9028a8

    #Select frame / career objective
    Select Frame                        class:cke_wysiwyg_frame
    Press Keys                          class:cke_editable                      Maximize my coding / automation skills
    Unselect Frame
    Sleep                               2s

    # next screen
    Scroll Element Into View            id:navButtonNext
    Click Element                       id:navButtonNext
    Sleep                               1s

Check Application Details
    # review page
    Wait Until Element Is Visible       id:container_241b9b23-5d08-5801-a41f-d0c0a3591e3f
    Sleep                               1s
    Page Should Contain                 Bessie
    Page Should Contain                 Walker
    Page Should Contain                 JR
    Page Should Contain                 4629 Waterview Lane Albuquerque
    Page Should Contain                 1000
    Page Should Contain                 Belgium
    Page Should Contain                 Female
    Page Should Contain                 Manual + Automation tester
    Page Should Contain                 Spreadsheet
    Page Should Contain                 JIRA
    Page Should Contain                 Test management tool (any)
    Page Should Contain                 Python
    Page Should Contain                 Maximize my coding / automation skills
    Scroll Element Into View            class:justify-content-between
    Sleep                               2s
    Click Button                        class:ml-md-auto
    Sleep                               2s

    # successful submit
    Wait Until Element is Visible       class:md-5
    Page Should Contain                 The selection process will start and we will respond as soon as possible.
    Capture Page Screenshot             success-screenshot.png
    Sleep                               2s

    # close browser
    Close Browser