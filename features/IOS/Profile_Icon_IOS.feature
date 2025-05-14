Feature: Profile_Icon_IOS
  Scenario: Profile_Icon_IOS

    Given LoginPage.loginButton should be present
    When I log in with the credentials of the "s.sciuto" user

    And ViewingRoutesPage.profileIcon should be present
    And I click ViewingRoutesPage.profileIcon
    Then all data sections of the "s.sciuto" profile are present
    And ViewingRoutesPage.updateCacheButton should be present
    And I tap on left side of ViewingRoutesPage.updateCacheButton
    And I wait until element ViewingRoutesPage.updatedCachePopUp is displayed
    And ViewingRoutesPage.logOutButton should be present
    And I click ViewingRoutesPage.logOutButton
    And LoginPage.loginButton should be present