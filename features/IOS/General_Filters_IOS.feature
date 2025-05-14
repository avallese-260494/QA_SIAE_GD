Feature: General_Filters_IOS
  Scenario: General_Filters_IOS

    Given LoginPage.loginButton should be present
    When I log in with the credentials of the "s.sciuto" user

    And I click ViewingRoutesPage.generalFilters
    And ViewingRoutesPage.generalFiltersHeader should be present
    And ViewingRoutesPage.generalFiltersSubHeader should be present
    And ViewingRoutesPage.showResultsButton should be present
    And ViewingRoutesPage.resetFilters should be present
    And I deselect all the general filters
    And I check that the filter ViewingRoutesPage.morningFilter is working properly
    And I check that the filter ViewingRoutesPage.lunchFilter is working properly
    And I check that the filter ViewingRoutesPage.afternoonFilter is working properly
    And I check that the filter ViewingRoutesPage.eveningFilter is working properly
    And I check that the filter ViewingRoutesPage.nightFilter is working properly

