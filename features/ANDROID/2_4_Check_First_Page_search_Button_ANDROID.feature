Feature: 2_4_Check_First_Page_search_Button_ANDROID
  Scenario: 2_4_Check_First_Page_search_Button_ANDROID
    
	Given LoginPage.loginButton should be present
    And I log in with the credentials of the "s.sciuto" user
  	Then ViewingRoutesPage.search should be visible
	And I click ViewingRoutesPage.search
	And ViewingRoutesPage.ambientMusic should be visible
And ViewingRoutesPage.useCurrentLocation should be visible
And ViewingRoutesPage.searchInputField should be visible
And ViewingRoutesPage.searchButton should be visible
And ViewingRoutesPage.localSearchIcon should be visible


