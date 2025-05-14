Feature: RoutesAndLocalsPage_Offline_IOS
  Scenario: RoutesAndLocalsPage_Offline_IOS

    Given LoginPage.loginButton should be present
    And I log in with the credentials of the "s.sciuto" user
    And I turn off data connection
    And the offline mode popup should be present
    And I turn on data connection
    Then routes detail page elements are displayed properly
    And I click ViewingRoutesPage.routesSingleLabel
    And I turn off data connection
    And the offline mode popup should be present
    And RoutesDetailPage.offlineModeMessage should be present
    And routes detail page elements are displayed properly
    And I click the first local
    Then LocalDetailPage.localDetailPageHeader should be present
    And I turn on data connection
