Feature: Report_Form_Data_Auto_Fills_And_Address_Suggestions_IOS
  Scenario: Report_Form_Data_Auto_Fills_And_Address_Suggestions_IOS

    Given I log in with the credentials of the "s.sciuto" user
    When I search for a validated local from the route list and select it
    Then LocalDetailPage.compileReportButton should be visible

    And I remember LocalDetailPage.localName local data
    And I remember LocalDetailPage.localAddress local data
    And I scroll down until LocalDetailPage.generalInformationLabel is displayed
    And I remember LocalDetailPage.fiscalCode local data
    And I remember LocalDetailPage.VATNumber local data
    And I remember LocalDetailPage.localGenre local data
    And I scroll down until LocalDetailPage.lastSubscription is displayed
    And I remember LocalDetailPage.lastSubscription local data

    When I click LocalDetailPage.compileReportButton
    And I click LocalDetailPage.compileReportButtonStart

    ################## Company data page ##################

    And ReportPage.reportPageHeader should be visible
    And ReportPage.closeReportButton should be visible

    And ReportPage.legalEntityButton should be present
    And ReportPage.individualButton should be present

    And I click ReportPage.legalEntityButton

    And ReportPage.legalFormDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.legalFormDropdownMenu
    And I remember ReportPage.legalFormDropdownMenu field data of "company data" page

    And ReportPage.legalNatureDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.legalNatureDropdownMenu

    And I scroll down until ReportPage.companyNameField is displayed
    And ReportPage.companyNameField should be present
    And if it is not filled in, I fill in the field ReportPage.companyNameField

    And I scroll down until ReportPage.VATNumberField is displayed
    And ReportPage.VATNumberField should be present
    And I check the automatic filling of the field ReportPage.VATNumberField
    And if it is not filled in, I fill in the field ReportPage.VATNumberField

    And I scroll down until ReportPage.companyFiscalCodeField is displayed
    And ReportPage.companyFiscalCodeField should be present
    And I check the automatic filling of the field ReportPage.companyFiscalCodeField
    And if it is not filled in, I fill in the field ReportPage.companyFiscalCodeField

    And I scroll down until ReportPage.countryHeadquartersDropdownMenu is displayed
    And ReportPage.countryHeadquartersDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.countryHeadquartersDropdownMenu

    And I scroll down until ReportPage.provinceDropdownMenu is displayed
    And ReportPage.provinceDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.provinceDropdownMenu

    And I scroll down until ReportPage.municipalityDropdownMenu is displayed
    And ReportPage.municipalityDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.municipalityDropdownMenu

    And I scroll down until ReportPage.addressDropdownMenu is displayed
    And ReportPage.addressDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.addressDropdownMenu

    And I scroll down until ReportPage.streetNumberField is displayed
    And ReportPage.streetNumberField should be present
    And if it is not filled in, I fill in the field ReportPage.streetNumberField

    And I scroll down until ReportPage.postalCodeField is displayed
    And ReportPage.postalCodeField should be present
    And if it is not filled in, I fill in the field ReportPage.postalCodeField

    And I scroll down until ReportPage.PECAddressField is displayed
    And ReportPage.PECAddressField should be present
    And if it is not filled in, I fill in the field ReportPage.PECAddressField

    And I scroll down until ReportPage.emailField is displayed
    And ReportPage.emailField should be present
    And if it is not filled in, I fill in the field ReportPage.emailField

    And ReportPage.agreementCheckbox should be present

    Then I click ReportPage.confirmButton

    ################## Holder data page ##################

    When I wait until ReportPage.holderTitle is visible

    And ReportPage.holderNameField should be present
    And if it is not filled in, I fill in the field ReportPage.holderNameField

    And ReportPage.holderLastNameField should be present
    And if it is not filled in, I fill in the field ReportPage.holderLastNameField

    And ReportPage.italianCitizenshipCheckbox should be present

    And ReportPage.fiscalCodeField should be present
    And if it is not filled in, I fill in the field ReportPage.fiscalCodeField

    And I scroll down until ReportPage.nationalityBirthDropdownMenu is displayed
    And ReportPage.nationalityBirthDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.nationalityBirthDropdownMenu

    And I scroll down until ReportPage.birthProvinceDropdownMenu is displayed
    And ReportPage.birthProvinceDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.birthProvinceDropdownMenu

    And I scroll down until ReportPage.cityBirthDropdownMenu is displayed
    And ReportPage.cityBirthDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.cityBirthDropdownMenu

    And I scroll down until ReportPage.dateBirthDropdownMenu is displayed
    And ReportPage.dateBirthDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.dateBirthDropdownMenu

    And I scroll down until ReportPage.nationalityResidenceDropdownMenu is displayed
    And ReportPage.nationalityResidenceDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.nationalityResidenceDropdownMenu

    And I scroll down until ReportPage.provinceDropdownMenu is displayed
    And ReportPage.provinceDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.provinceDropdownMenu

    And I scroll down until ReportPage.municipalityDropdownMenu is displayed
    And ReportPage.municipalityDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.municipalityDropdownMenu

    And I scroll down until ReportPage.addressDropdownMenu is displayed
    And ReportPage.addressDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.addressDropdownMenu

    And I scroll down until ReportPage.streetNumberField is displayed
    And ReportPage.streetNumberField should be present
    And if it is not filled in, I fill in the field ReportPage.streetNumberField

    And I scroll down until ReportPage.postalCodeField is displayed
    And ReportPage.postalCodeField should be present
    And if it is not filled in, I fill in the field ReportPage.postalCodeField

    And I scroll down until ReportPage.sexDropdownMenu is displayed
    And ReportPage.sexDropdownMenu should be present
    And if it is not filled in, I fill in the dropdown menu ReportPage.sexDropdownMenu

    And I scroll down until ReportPage.mobilePhoneField is displayed
    And ReportPage.mobilePhoneField should be present
    And if it is not filled in, I fill in the field ReportPage.mobilePhoneField

    And I scroll down until ReportPage.phoneField is displayed
    And ReportPage.phoneField should be present
    And if it is not filled in, I fill in the field ReportPage.phoneField

    And I scroll down until ReportPage.PECAddressField is displayed
    And ReportPage.PECAddressField should be present
    And if it is not filled in, I fill in the field ReportPage.PECAddressField

    And I scroll down until ReportPage.emailField is displayed
    And ReportPage.emailField should be present
    And if it is not filled in, I fill in the field ReportPage.emailField

    Then I click ReportPage.confirmButton

    ################## Local information page ##################

    When I wait until ReportPage.localInformationTitle is visible

    And I check the automatic filling of the field ReportPage.verifiedLocalField

    And I check the automatic filling of the field ReportPage.localGenreDropdownMenu

    And I scroll down until ReportPage.localAddressDropdownMenu is displayed
    And I check the automatic filling of the field ReportPage.localAddressDropdownMenu

    And I scroll down until ReportPage.streetNumberField is displayed
    And I check the automatic filling of the field ReportPage.streetNumberField

    And I scroll down until ReportPage.subscriptionExpiryDateDropdownMenu is displayed
    And I check the automatic filling of the field ReportPage.subscriptionExpiryDateDropdownMenu

















