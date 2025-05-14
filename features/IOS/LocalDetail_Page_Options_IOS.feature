Feature: LocalDetail_Page_Options_IOS
  Scenario: LocalDetail_Page_Options_IOS

    Given LoginPage.loginButton should be present
    And I log in with the credentials of the "s.sciuto" user
    Then I click ViewingRoutesPage.routesSingleLabel
    And I scroll down until RoutesDetailPage.validatedLabel is displayed
    And I click RoutesDetailPage.validatedLabel

    And I click LocalDetailPage.optionsIcon

    And LocalDetailPage.offSiteSepragLocation should be present
    And LocalDetailPage.criticLocation should be present
    And LocalDetailPage.delayAssessment should be present

    And I check the functionality of LocalDetailPage.offSiteSepragLocation
    And I check the functionality of LocalDetailPage.criticLocation
    And I check the functionality of LocalDetailPage.delayAssessment