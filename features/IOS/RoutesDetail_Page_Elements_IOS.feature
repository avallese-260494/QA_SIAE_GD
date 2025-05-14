Feature: RoutesDetail_Page_Elements_IOS
  Scenario: RoutesDetail_Page_Elements_IOS
    Given LoginPage.loginButton should be present
    When I log in with the credentials of the "s.sciuto" user

    Then I click ViewingRoutesPage.routesSingleLabel
    And RoutesDetailPage.routesDetailPageUpperLeftArrow should be present
    And RoutesDetailPage.routesDetailPageHeader should be present
    And ViewingRoutesPage.generalFilters should be present
    And routes detail page elements are displayed properly