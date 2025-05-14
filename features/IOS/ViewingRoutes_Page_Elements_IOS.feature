Feature: ViewingRoutes_Page_Elements_IOS
  Scenario: ViewingRoutes_Page_Elements_IOS
    Given LoginPage.loginButton should be present
    When I log in with the credentials of the "s.sciuto" user

##    Then ViewingRoutesPage.siaeLogo should be visible
###   Logo is not visible on iOS xPath -> enabled="true" visible="false"

    And ViewingRoutesPage.lensIcon should be visible
    And ViewingRoutesPage.feedbackIcon should be visible
    And ViewingRoutesPage.profileIcon should be visible
    And ViewingRoutesPage.generalFilters should be visible

    And I check that the routes ViewingRoutesPage.routesList are displayed correctly
    And I verify that the route cards report the "Importo" data
    And I verify that the route cards report the "Numero locali" data
    And I verify that the route cards report the address after the label "Numero locali"
    And I verify that the route card contains the map button ViewingRoutesPage.mapRouteCard