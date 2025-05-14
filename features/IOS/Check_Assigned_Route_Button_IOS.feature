Feature: Check_Assigned_Route_Button_IOS
  Scenario: Check_Assigned_Route_Button_IOS

    Given LoginPage.loginButton should be present
    When I log in with the credentials of the "s.sciuto" user

    And I check if I can take on an available route