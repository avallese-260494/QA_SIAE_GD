Feature: Compile_Report_Device_Check_IOS
  Scenario: Compile_Report_Device_Check_IOS

    Given I log in with the credentials of the "s.sciuto" user
    When I search for a validated local from the route list and select it
    And LocalDetailPage.compileReportButton should be visible


    And I click LocalDetailPage.compileReportButton
    And I click LocalDetailPage.compileReportButtonStart

    Then I wait until ReportPage.reportPageHeader is visible

    And I click ReportPage.individualButton

    ################## Holder data page ##################

    When I wait until ReportPage.personalInformationHolderTitle is visible

    And I fill in the fields on the "personal information" page

    Then I click ReportPage.confirmButton

    ################## Local information page ##################

    When I wait until ReportPage.localInformationTitle is visible

    And I fill in the fields on the "local information" page

    And I scroll down until ReportPage.confirmButton is displayed
    Then I click ReportPage.confirmButton

    ################## Devices detected page ##################

    When I wait until ReportPage.deviceDetectedTitle is visible

    And I deselect devices if already selected
    And I click ReportPage.showMoreDevicesCta
    And I scroll up until ReportPage.deviceDetectedTitle is displayed
    Then I check that there are all types of devices

    And I scroll up until ReportPage.deviceDetectedTitle is displayed
    And I count the number of items in the device list ReportPage.listDeviceButtons
    And I save the number of device buttons in the list

    When I click ReportPage.showLessDevicesCta

    And I wait until element ReportPage.showMoreDevicesCta is displayed
    And I scroll up until ReportPage.deviceDetectedTitle is displayed

    And I count the number of items in the device list ReportPage.listDeviceButtons
    Then I verify that the number of device buttons has reduced

    When I click ReportPage.firstDeviceTypeOflistDeviceButtons
    And I click ReportPage.confirmButton

    ################## How many devices page ##################

    And I wait until ReportPage.howManyDevicesTitle is visible

    And ReportPage.devicesNumberField should be present
    And ReportPage.numberOfSpeakersField should be present
    And ReportPage.confirmButton should be present
    And ReportPage.backButton should be present

    When I click ReportPage.devicesNumberField
    And I input "1" in ReportPage.devicesNumberField
    And I tap on element ReportPage.reportPageHeader
    And I click ReportPage.numberOfSpeakersField
    And I input "1" in ReportPage.numberOfSpeakersField
    And I tap on element ReportPage.reportPageHeader
    Then I click ReportPage.confirmButton

    ################## Repertoire performed page ##################

    When I wait until ReportPage.repertoirePerformedTitle is visible

    And ReportPage.addTrackButton should be present
    And I click ReportPage.addTrackButton
    And ReportPage.trackField should be present
    And ReportPage.authorField should be present
    And I scroll down until ReportPage.providerRadioInStoreCheckbox is displayed
    And ReportPage.palimpsestField should be present
    And ReportPage.providerRadioInStoreCheckbox should be present
    And ReportPage.confirmButton should be present
    And ReportPage.backButton should be present
    Then I scroll up until ReportPage.trackField is displayed

    When I click ReportPage.trackField
    And I input "Hotel California" in ReportPage.trackField
    And I tap on element ReportPage.reportPageHeader
    And I click ReportPage.authorField
    And I input "Eagles" in ReportPage.authorField
    And I tap on element ReportPage.reportPageHeader
    And I scroll down until ReportPage.providerRadioInStoreCheckbox is displayed
    And I click ReportPage.palimpsestField
    And I input "Musica" in ReportPage.palimpsestField
    And I tap on element ReportPage.reportPageHeader
    Then I click ReportPage.confirmButton

    ################## Declaration by the party page ##################

    When I wait until ReportPage.declarationByThePartyTitle is visible






















