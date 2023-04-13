*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${DEVICE_NAME}    Android 12
${APP}    ${CURDIR}\\Sample Android App - Login Tes_4.0_Apkpure.apk
${APP_PACKAGE}    com.loginmodule.learning
${APP_ACTIVITY}    com.loginmodule.learning.activities.LoginActivity
${name}     haekal
${email}    haekal@mail.com
${password}     password
${Alert.WrongEmailPassword}     Wrong Email Or Password
${Login.Text.Email}     id=com.loginmodule.learning:id/textInputEditTextEmail
${Login.Text.Password}  id=com.loginmodule.learning:id/textInputEditTextPassword
${Login.Btn.Login}      id=com.loginmodule.learning:id/appCompatButtonLogin
${Login.Btn.Register}   id=com.loginmodule.learning:id/textViewLinkRegister

${Register.Text.Name}   id=com.loginmodule.learning:id/textInputEditTextName
${Register.Text.Email}  id=com.loginmodule.learning:id/textInputEditTextEmail
${Register.Text.Password}   id=com.loginmodule.learning:id/textInputEditTextPassword
${Register.Text.ConfirmPassword}    id=com.loginmodule.learning:id/textInputEditTextConfirmPassword
${Register.Btn.Register}    id=com.loginmodule.learning:id/appCompatButtonRegister

${Account.Name}     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView[2]
${Account.Email}    id=com.loginmodule.learning:id/textViewEmail
${Account.Password}     id=com.loginmodule.learning:id/textViewPassword

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
    Click Element   ${Login.Btn.Register}
    Sleep   2s
    Wait Until Element Is Visible   ${Register.Text.Name}
    Input Text  ${Register.Text.Name}   ${name}
    Input Text  ${Register.Text.Email}  ${email}
    Input Text  ${Register.Text.Password}   ${password}
    Input Text  ${Register.Text.ConfirmPassword}    ${password}
    Click Element   ${Register.Btn.Register}

Login With Wrong Password
    Input Text      ${Login.Text.Email}   ${email}   
    Input Text      ${Login.Text.Password}  wrongpassword
    Click Element   ${Login.Btn.Login}

Login User
    Clear Text      ${Login.Text.Password}
    Input Text      ${Login.Text.Password}  ${password}
    Click Element   ${Login.Btn.Login}

Verify Account Information
    Element Should Contain Text     ${Account.Name}     ${name}
    Element Should Contain Text     ${Account.Email}    ${email}
    Element Should Contain Text     ${Account.Password}     ${password}