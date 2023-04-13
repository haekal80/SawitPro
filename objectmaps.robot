*** Variables ***

${Login.Text.Email}		id=com.loginmodule.learning:id/textInputEditTextEmail
${Login.Text.Password}	id=com.loginmodule.learning:id/textInputEditTextPassword
${Login.Btn.Login}		id=com.loginmodule.learning:id/appCompatButtonLogin
${Login.Btn.Register}	id=com.loginmodule.learning:id/textViewLinkRegister

${Register.Text.Name}	id=com.loginmodule.learning:id/textInputEditTextName
${Register.Text.Email}	id=com.loginmodule.learning:id/textInputEditTextEmail
${Register.Text.Password}	id=com.loginmodule.learning:id/textInputEditTextPassword
${Register.Text.ConfirmPassword}	id=com.loginmodule.learning:id/textInputEditTextConfirmPassword
${Register.Btn.Register}	id=com.loginmodule.learning:id/appCompatButtonRegister

${Account.Name}	xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView[2]
${Account.Email}	id=com.loginmodule.learning:id/textViewEmail
${Account.Password}	id=com.loginmodule.learning:id/textViewPassword

${APPIUM_SERVER}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${DEVICE_NAME}    Android 12
${APP}    ${CURDIR}\\Sample Android App Login Test_v4.0_apkpure.com.apk
${APP_PACKAGE}    com.loginmodule.learning
${APP_ACTIVITY}    com.loginmodule.learning.activities.LoginActivity
${name} haekal
${email} haekal@mail.com
${password} password
${Alert.WrongEmailPassword} Wrong Email Or Password