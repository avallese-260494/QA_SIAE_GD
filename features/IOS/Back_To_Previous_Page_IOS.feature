Feature: Back_To_Previous_Page_IOS
  Scenario: Back_To_Previous_Page_IOS

    Given LoginPage.loginButton should be present
    When I log in with the credentials of the "s.sciuto" user

    And ViewingRoutesPage.routesSingleLabel should be visible
    And I click ViewingRoutesPage.routesSingleLabel
    And I wait until element RoutesDetailPage.genericLocalCard is displayed
    Then RoutesDetailPage.backButton should be visible

    When I click RoutesDetailPage.backButton
    And I wait until element ViewingRoutesPage.routesSingleLabel is displayed
    And I click ViewingRoutesPage.routesSingleLabel
    And I wait until element RoutesDetailPage.genericLocalCard is displayed
    And I click RoutesDetailPage.genericLocalCard
    And I wait until element LocalDetailPage.localName is displayed
    Then LocalDetailPage.backButton should be visible

    When I click LocalDetailPage.backButton
    Then I wait until element RoutesDetailPage.genericLocalCard is displayed


