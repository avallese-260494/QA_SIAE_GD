Feature: LocalDetail_Page_Elements_IOS
  Scenario: LocalDetail_Page_Elements_IOS

    Given LoginPage.loginButton should be present
    And I log in with the credentials of the "s.sciuto" user
    Then I click ViewingRoutesPage.routesSingleLabel
    And I scroll down until RoutesDetailPage.validatedLabel is displayed
    And I click RoutesDetailPage.validatedLabel
    And I check if all the local detail page elements are displayed properly