Feature: Compile_Report_Summary_Legal_Entity_Flow_IOS
  Scenario: Compile_Report_Summary_Legal_Entity_Flow_IOS

    Given I log in with the credentials of the "s.sciuto" user

    When I search for a validated local from the route list and select it
    Then LocalDetailPage.compileReportButton should be visible


    When I click LocalDetailPage.compileReportButton
    And I click LocalDetailPage.compileReportButtonStart

    And I wait until ReportPage.reportPageHeader is visible

    And I click ReportPage.legalEntityButton

    ################## Company data page ##################

    When I wait until ReportPage.legalFormDropdownMenu is visible

    And I fill in the fields on the "company data" page

    Then I click ReportPage.confirmButton

     ################## Holder data page ##################

    When I wait until ReportPage.holderTitle is visible

    And I fill in the fields on the "holder data" page

    Then I click ReportPage.confirmButton

    ################## Local information page ##################

    When I wait until ReportPage.localInformationTitle is visible

    And I fill in the fields on the "local information" page

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

    And I scroll down until ReportPage.companyDataDropdownMenuSummary is displayed
    And I click ReportPage.companyDataDropdownMenuSummary

    And I wait until element ReportPage.companyNameSummary is displayed

    And I check the summary for the ReportPage.companyNameSummary field of "company" section
    And I check the summary for the ReportPage.fiscalCodeSummary field of "company" section
    And I check the summary for the ReportPage.VATNumberSummary field of "company" section
    And I check the summary for the ReportPage.addressSummary field of "company" section
    And I scroll down until ReportPage.provinceSummary is displayed
    And I check the summary for the ReportPage.provinceSummary field of "company" section
    And I check the summary for the ReportPage.postalCodeSummary field of "company" section
    And ReportPage.companyDataEditButton should be present

    And I scroll down until ReportPage.holderDropdownMenuSummary is displayed
    And I click ReportPage.holderDropdownMenuSummary

    And I wait until element ReportPage.holderNameSummary is displayed

    And I check the summary for the ReportPage.holderNameSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.italianCitizenshipSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.fiscalCodeHolderSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.birthNationalitySummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.birthProvinceSummary field of "holder/legal representative" section
    And I scroll down until ReportPage.birthCitySummary is displayed
    And I check the summary for the ReportPage.birthCitySummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.birthDateSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.addressHolderSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.nationalityResidenceSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.municipalitySummary field of "holder/legal representative" section
    And I scroll down until ReportPage.postalCodeHolderSummary is displayed
    And I check the summary for the ReportPage.postalCodeSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.sexSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.mobilePhoneSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.phoneSummary field of "holder/legal representative" section
    And I check the summary for the ReportPage.PECAddressSummary field of "holder/legal representative" section
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











































