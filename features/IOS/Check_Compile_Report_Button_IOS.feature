Feature: Check_Compile_Report_Button_IOS
  Scenario: Check_Compile_Report_Button_IOS

    Given LoginPage.loginButton should be present
    When I log in with the credentials of the "s.sciuto" user


    When I search for a validated local from the route list and select it

    Then LocalDetailPage.compileReportButton should be visible
    When I click LocalDetailPage.compileReportButton
    And I click LocalDetailPage.compileReportButtonStart
    Then ReportPage.reportPageHeader should be visible
