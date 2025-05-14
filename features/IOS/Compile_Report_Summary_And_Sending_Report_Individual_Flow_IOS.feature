Feature: Compile_Report_Summary_And_Sending_Report_Individual_Flow_IOS
  Scenario: Compile_Report_Summary_And_Sending_Report_Individual_Flow_IOS

    Given I log in with the credentials of the "s.sciuto" user

    When I search for a validated local from the route list and select it
    Then LocalDetailPage.compileReportButton should be visible


    When I click LocalDetailPage.compileReportButton
    And I click LocalDetailPage.compileReportButtonStart

    And I wait until ReportPage.reportPageHeader is visible

    And I click ReportPage.individualButton

    ################## Personal information of the holder page ##################

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
    And I scroll up until ReportPage.multimediaDevicesButton is displayed
    And I click ReportPage.multimediaDevicesButton

    And I scroll down until ReportPage.confirmButton is displayed
    Then I click ReportPage.confirmButton

    ################## How many devices page ##################

    When I wait until ReportPage.howManyDevicesTitle is visible

    And I fill in the fields on the "how many devices" page

    And I scroll down until ReportPage.confirmButton is displayed
    Then I click ReportPage.confirmButton

    ################## Repertoire performed page ##################

    When I wait until ReportPage.repertoirePerformedTitle is visible

    And I fill in the fields on the "repertoire performed" page

    And I scroll down until ReportPage.confirmButton is displayed
    Then I click ReportPage.confirmButton

    ################## Declaration by the party page ##################

    When I wait until ReportPage.declarationByThePartyTitle is visible

    And ReportPage.nameField should be present
    And ReportPage.lastNameField should be present
    And ReportPage.placeOfBirthDropdownMenu should be present
    And ReportPage.dateBirthDropdownMenu should be present
    And I scroll down until ReportPage.roleField is displayed
    And ReportPage.roleField should be present
    And I scroll down until ReportPage.devicesInstalledDropdownMenu is displayed
    And ReportPage.devicesInstalledDropdownMenu should be present
    And I scroll down until ReportPage.otherStatementsTextBox is displayed
    And ReportPage.otherStatementsTextBox should be present
    And I scroll down until ReportPage.confirmButton is displayed
    And ReportPage.confirmButton should be present
    And ReportPage.backButton should be present
    Then I scroll up until ReportPage.nameField is displayed

    And I fill in the fields on the "declaration by the party" page

    And I scroll down until ReportPage.confirmButton is displayed
    Then I click ReportPage.confirmButton

     ################## Summary page ##################

    When I wait until ReportPage.reportSummaryPageTitle is visible

    And ReportPage.assessmentDatePageTitleSummary should be present
    And ReportPage.examinersTitleSummary should be present
    And ReportPage.examinerNameAndLastNameSummary should be present
    And ReportPage.assessmentStartTimeSummary should be present

    And I scroll down until ReportPage.holderDropdownMenuSummary is displayed
    And I click ReportPage.holderDropdownMenuSummary

    And I wait until element ReportPage.holderNameSummary is displayed

    And I check the summary for the ReportPage.holderNameSummary field of "holder" section
    And I check the summary for the ReportPage.italianCitizenshipSummary field of "holder" section
    And I check the summary for the ReportPage.fiscalCodeSummary field of "holder" section
    And I scroll down until ReportPage.birthNationalitySummary is displayed
    And I check the summary for the ReportPage.birthNationalitySummary field of "holder" section
    And I check the summary for the ReportPage.birthProvinceSummary field of "holder" section
    And I check the summary for the ReportPage.birthCitySummary field of "holder" section
    And I check the summary for the ReportPage.birthDateSummary field of "holder" section
    And I scroll down until ReportPage.addressSummary is displayed
    And I check the summary for the ReportPage.addressSummary field of "holder" section
    And I check the summary for the ReportPage.nationalityResidenceSummary field of "holder" section
    And I check the summary for the ReportPage.municipalitySummary field of "holder" section
    And I check the summary for the ReportPage.postalCodeSummary field of "holder" section
    And I scroll down until ReportPage.sexSummary is displayed
    And I check the summary for the ReportPage.sexSummary field of "holder" section
    And I check the summary for the ReportPage.mobilePhoneSummary field of "holder" section
    And I check the summary for the ReportPage.phoneSummary field of "holder" section
    And I check the summary for the ReportPage.PECAddressSummary field of "holder" section
    And ReportPage.holderEditButton should be present

    And I scroll down until ReportPage.verifiedLocalInformationDropdownMenuSummary is displayed
    And I click ReportPage.verifiedLocalInformationDropdownMenuSummary

    And I wait until element ReportPage.verifiedLocalSummary is displayed

    And I check the summary for the ReportPage.verifiedLocalSummary field of "local information" section
    And I check the summary for the ReportPage.localGenreSummary field of "local information" section
    And I check the summary for the ReportPage.localSpaceSummary field of "local information" section
    And I scroll down until ReportPage.localCapacitySummary is displayed
    And I check the summary for the ReportPage.localCapacitySummary field of "local information" section
    And I check the summary for the ReportPage.executionTypeSummary field of "local information" section
    And I check the summary for the ReportPage.addressSummary field of "local information" section
    And I check the summary for the ReportPage.municipalitySummary field of "local information" section
    And I scroll down until ReportPage.provinceSummary is displayed
    And I check the summary for the ReportPage.provinceSummary field of "local information" section
    And I check the summary for the ReportPage.postalCodeSummary field of "local information" section
    And I check the summary for the ReportPage.sportingAndSpecialEventsSummary field of "local information" section
    And I check the summary for the ReportPage.typeOfSubscriptionSummary field of "local information" section
    And I check the summary for the ReportPage.subscriptionStartDateSummary field of "local information" section
    And I scroll down until ReportPage.subscriptionExpiryDateSummary is displayed
    And I check the summary for the ReportPage.subscriptionExpiryDateSummary field of "local information" section
    And ReportPage.verifiedLocalInformationEditButton should be present

    And I scroll down until ReportPage.devicesDropdownMenuSummary is displayed
    And I click ReportPage.devicesDropdownMenuSummary

    And I wait until element ReportPage.selectedDeviceSummary is displayed

    And I check the summary for the ReportPage.selectedDeviceSummary field of "devices" section
    And ReportPage.devicesEditButton should be present

    And I scroll down until ReportPage.repertoirePerformedDropdownMenuSummary is displayed
    And I click ReportPage.repertoirePerformedDropdownMenuSummary

    And I wait until element ReportPage.trackSummary is displayed

    And I check the summary for the ReportPage.trackSummary field of "repertoire performed" section
    And I scroll down until ReportPage.palimpsestSummary is displayed
    And I check the summary for the ReportPage.palimpsestSummary field of "repertoire performed" section
    And ReportPage.repertoirePerformedEditButton should be present
    And I click ReportPage.repertoirePerformedDropdownMenuSummary

    And I scroll down until ReportPage.declarationByThePartyDropdownMenuSummary is displayed
    And I click ReportPage.declarationByThePartyDropdownMenuSummary

    And I scroll down until ReportPage.nameSummary is displayed
    And I wait until element ReportPage.nameSummary is displayed

    And I check the summary for the ReportPage.nameSummary field of "declaration by the party" section
    And I scroll down until ReportPage.lastNameSummary is displayed
    And I check the summary for the ReportPage.lastNameSummary field of "declaration by the party" section
    And I check the summary for the ReportPage.placeOfBirthSummary field of "declaration by the party" section
    And I check the summary for the ReportPage.birthDateSummary field of "declaration by the party" section
    And I check the summary for the ReportPage.roleSummary field of "declaration by the party" section
    And I check the summary for the ReportPage.devicesInstalledAndOperatingSinceSummary field of "declaration by the party" section
    And I scroll down until ReportPage.otherStatementsSummary is displayed
    And I check the summary for the ReportPage.otherStatementsSummary field of "declaration by the party" section
    And ReportPage.declarationByThePartyEditButton should be present

    Then ReportPage.sendReportButton should be present

    ################## Sending report ##################

    When I click ReportPage.sendReportButton
    And I wait until element ReportPage.sendReportPopUp is displayed

    And ReportPage.sendReportOptionPopUp should be present
    And ReportPage.sendsAndConvertsInAcknowledgementOptionPopUp should be present
    And ReportPage.confirmButtonSendReportPopUp should be present
    Then ReportPage.cancelButtonSendReportPopUp should be present

    When I click ReportPage.cancelButtonSendReportPopUp
    Then I wait until element ReportPage.sendReportButton is displayed

    When I click ReportPage.sendReportButton
    And I wait until element ReportPage.confirmButtonSendReportPopUp is displayed
    And I click ReportPage.confirmButtonSendReportPopUp

    Then I wait until element ReportPage.reportSentSuccessfullyMessage is displayed











































