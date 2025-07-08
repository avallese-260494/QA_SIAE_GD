Feature: 4_1_check_Mda_Button_ANDROID
  Scenario: 4_1_check_Mda_Button_ANDROID
  
    Given LoginPage.loginButton should be present
    And I log in with the credentials of the "s.sciuto" user
    Then I click ViewingRoutesPage.routesSingleLabel
	And I click ViewingRoutesPage.Prospect
	When LocalDetailPage.compileReportButton should be visible
    Then I click LocalDetailPage.compileReportButton
	And I click LocalDetailPage.Mda_106
	And I click LocalDetailPage.compileReportButtonStart
	And I scroll down until ReportPage.confirmButton is displayed
