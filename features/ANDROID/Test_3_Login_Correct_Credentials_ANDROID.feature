Feature: Login_Correct_Credentials_ANDROID
  Scenario: Login_Correct_Credentials_ANDROID

    Given LoginPage.loginButton should be present

    When I wait until LoginPage.loginButton is visible
    And I click LoginPage.loginButton
    Then I wait until element LoginPage.usernameField is displayed

    When I input "s.sciuto" in LoginPage.usernameField
    And I input "Reply123!" in LoginPage.passwordField
    And I click LoginPage.signInButton