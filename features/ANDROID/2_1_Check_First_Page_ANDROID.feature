Feature: 2_1_Check_First_Page_ANDROID
  Scenario: 2_1_Check_First_Page_ANDROID
    
	Given LoginPage.loginButton should be present
    And I log in with the credentials of the "s.sciuto" user
    #Then I click ViewingRoutesPage.routesSingleLabel
	Then ViewingRoutesPage.logo should be visible
	And ViewingRoutesPage.soundRecord should be visible
	And ViewingRoutesPage.search should be visible
	And ViewingRoutesPage.menu should be visible    
	And ViewingRoutesPage.filters should be visible  

