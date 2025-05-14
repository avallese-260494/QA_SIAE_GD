Feature: Check_Assigned_Route_Button_ANDROID
  Scenario: Check_Assigned_Route_Button_ANDROID

    Given LoginPage.loginButton should be present
    And I log in with the credentials of the "s.sciuto" user
    And I check if I can take on an available route
