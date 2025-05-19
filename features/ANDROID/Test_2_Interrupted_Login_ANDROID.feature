Feature: Interrupted_Login_ANDROID
  Scenario: Interrupted_Login_ANDROID

    Given LoginPage.loginButton should be present
    And I enter the credentials of the "s.sciuto" user without signing in
    And I click LoginPage.loginError
    And I click LoginPage.loginButton
    And LoginPage.usernameField should be empty
    And LoginPage.passwordField should be empty