Feature: Login_IOS
  Scenario: Login_IOS

    Given LoginPage.loginButton should be present
    When I log in with the credentials of the "s.sciuto" user and I check the list of districts
