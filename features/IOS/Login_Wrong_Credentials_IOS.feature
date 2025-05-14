Feature: Login_Wrong_Credentials_IOS
  Scenario: Login_Wrong_Credentials_IOS

    Given LoginPage.loginButton should be present

    When I wait until LoginPage.loginButton is visible
    And I click LoginPage.loginButton
    Then I wait until element LoginPage.usernameField is displayed

    When I input "test" in LoginPage.usernameField
    And I click LoginPage.signInWithUsername
    And I input "wrongPassword" in LoginPage.passwordField
    And I click LoginPage.signInWithUsername
    And I click LoginPage.signInButton
    Then I wait until LoginPage.errorMessageIncorrectCredentials is present
    And I check that LoginPage.errorMessageIncorrectCredentials contains text "Incorrect username or password."
    And LoginPage.signInButton should be visible


