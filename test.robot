*** Settings ***
Library    AppiumLibrary

*** Test cases ***
Mobile Test
    Launch Mobile Application
    Register User
    Go Back
    Login With Wrong Password
    Login User
    Verify Account Information
    Close Application

*** Keywords ***
Launch Mobile Application
    Open Application    ${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}

Register User
    Click Element ${Login.Btn.Register}
    Sleep 2s
    Wait Until Element Is Visible ${Register.Text.Name}
    Input Text  ${Register.Text.Name}
    Input Text  ${Register.Text.Email}
    Input Text  ${Register.Text.Password}
    Input Text  ${Register.Text.ConfirmPassword}
    Click Element   ${Register.Btn.Register}

Login With Wrong Password
    Input Text      ${Login.Text.Email}   ${email}   
    Input Text      ${Login.Text.Password}  wrongpassword
    Click Element   ${Login.Btn.Login}
    Alert Should Be Present ${Alert.WrongEmailPassword}

Login User 
    Input Text      ${Login.Text.Password}  ${password}
    Click Element   ${Login.Btn.Login}

Verify Account Information
    Element Should Contain Text ${Account.Name} ${name}
    Element Should Contain Text ${Account.Email} ${email}
    Element Should Contain Text ${Account.Password} ${password}