Feature: Compile_Report_With_Mandatory_Field_Validation_Legal_Entity_Flow_IOS
  Scenario: Compile_Report_With_Mandatory_Field_Validation_Legal_Entity_Flow_IOS

    Given I log in with the credentials of the "s.sciuto" user

    When I search for a validated local from the route list and select it
    Then LocalDetailPage.compileReportButton should be visible


    When I click LocalDetailPage.compileReportButton
    And I click LocalDetailPage.compileReportButtonStart
    
    And I wait until ReportPage.reportPageHeader is visible

    And I click ReportPage.legalEntityButton

    ################## Company data page ##################


    And ReportPage.legalFormDropdownMenu should be present
    And ReportPage.legalNatureDropdownMenu should be present
    And I scroll down until ReportPage.companyNameField is displayed
    And ReportPage.companyNameField should be present
    And I clear ReportPage.companyNameField field if filled in
    And ReportPage.VATNumberField should be present
    And I clear ReportPage.VATNumberField field if filled in
    And I scroll down until ReportPage.companyFiscalCodeField is displayed
    And ReportPage.companyFiscalCodeField should be present
    And I clear ReportPage.companyFiscalCodeField field if filled in
    And I scroll down until ReportPage.countryHeadquartersDropdownMenu is displayed
    And ReportPage.countryHeadquartersDropdownMenu should be present
    And I scroll down until ReportPage.provinceDropdownMenu is displayed
    And ReportPage.provinceDropdownMenu should be present
    And I scroll down until ReportPage.municipalityDropdownMenu is displayed
    And ReportPage.municipalityDropdownMenu should be present
    And I scroll down until ReportPage.addressDropdownMenu is displayed
    And ReportPage.addressDropdownMenu should be present
    And I scroll down until ReportPage.streetNumberField is displayed
    And ReportPage.streetNumberField should be present
    And I clear ReportPage.streetNumberField field if filled in
    And I scroll down until ReportPage.postalCodeField is displayed
    And ReportPage.postalCodeField should be present
    And I clear ReportPage.postalCodeField field if filled in
    And I scroll down until ReportPage.PECAddressField is displayed
    And ReportPage.PECAddressField should be present
    And I scroll down until ReportPage.emailField is displayed
    And ReportPage.emailField should be present
    And ReportPage.agreementCheckbox should be present
    And ReportPage.confirmButton should be present

    Then I click ReportPage.confirmButton

    When I scroll up until ReportPage.legalFormDropdownMenu is displayed

    And if the drop-down menu ReportPage.legalFormDropdownMenu is not filled in, I check there is ReportPage.legalFormDropdownMenuErrorMandatoryField error message
    And if the drop-down menu ReportPage.legalNatureDropdownMenu is not filled in, I check there is ReportPage.legalNatureDropdownMenuErrorMandatoryField error message
    And I scroll down until ReportPage.companyNameField is displayed
    And ReportPage.companyNameFieldErrorMandatoryField should be present
    And ReportPage.VATNumberFieldErrorMandatoryField should be present
    And I scroll down until ReportPage.companyFiscalCodeField is displayed
    And ReportPage.fiscalCodeFieldErrorMandatoryField should be present
    And I scroll down until ReportPage.countryHeadquartersDropdownMenu is displayed
    And if the drop-down menu ReportPage.countryHeadquartersDropdownMenu is not filled in, I check there is ReportPage.countryHeadquartersDropdownMenuErrorMandatoryField error message
    And I scroll down until ReportPage.provinceDropdownMenu is displayed
    And if the drop-down menu ReportPage.provinceDropdownMenu is not filled in, I check there is ReportPage.provinceDropdownMenuErrorMandatoryField error message
    And I scroll down until ReportPage.municipalityDropdownMenu is displayed
    And if the drop-down menu ReportPage.municipalityDropdownMenu is not filled in, I check there is ReportPage.municipalityDropdownMenuErrorMandatoryField error message
    And I scroll down until ReportPage.addressDropdownMenu is displayed
    And if the drop-down menu ReportPage.addressDropdownMenu is not filled in, I check there is ReportPage.addressDropdownMenuErrorMandatoryField error message
    And I scroll down until ReportPage.streetNumberField is displayed
    And ReportPage.streetNumberFieldErrorMandatoryField should be present
    And I scroll down until ReportPage.postalCodeField is displayed
    Then ReportPage.postalCodeFieldErrorMandatoryField should be present

    When I scroll up until ReportPage.legalFormDropdownMenu is displayed

    And I fill in the fields on the "company data" page

    Then I click ReportPage.confirmButton

    ################## Holder data page ##################

    When I wait until ReportPage.holderTitle is visible

    And ReportPage.fillInDataToggle should be present
    And ReportPage.holderNameField should be present
    And I clear ReportPage.holderNameField field if filled in
    And ReportPage.holderLastNameField should be present
    And I clear ReportPage.holderLastNameField field if filled in
    And ReportPage.italianCitizenshipCheckbox should be present
    And I click checkbox ReportPage.italianCitizenshipCheckbox if is not checked
    And ReportPage.fiscalCodeField should be present
    And I clear ReportPage.fiscalCodeField field if filled in

    And I scroll down until ReportPage.confirmButton is displayed
    And I click ReportPage.confirmButton

    And I scroll up until ReportPage.holderNameField is displayed
    And ReportPage.holderNameFieldErrorMandatoryField should be present
    And ReportPage.holderLastNameFieldErrorMandatoryField should be present
    And ReportPage.fiscalCodeFieldErrorMandatoryField should be present
    And I scroll down until ReportPage.nationalityBirthDropdownMenu is displayed
    And ReportPage.nationalityBirthDropdownMenu should be present
    And if the drop-down menu ReportPage.nationalityBirthDropdownMenu is not filled in, I check there is ReportPage.nationalityBirthDropdownMenuErrorMandatoryField error message

    And if the country of ReportPage.nationalityBirthDropdownMenu is not Italy, then I select it

    And I scroll down until ReportPage.confirmButton is displayed
    And I click ReportPage.confirmButton

    And I scroll up until ReportPage.birthProvinceDropdownMenu is displayed
    And ReportPage.birthProvinceDropdownMenu should be present
    And if the drop-down menu ReportPage.birthProvinceDropdownMenu is not filled in, I check there is ReportPage.birthProvinceDropdownMenuErrorMandatoryField error message

    And I scroll down until ReportPage.cityBirthDropdownMenu is displayed
    And ReportPage.cityBirthDropdownMenu should be present
    And if the drop-down menu ReportPage.cityBirthDropdownMenu is not filled in, I check there is ReportPage.cityBirthDropdownMenuErrorMandatoryField error message

    And I scroll down until ReportPage.dateBirthDropdownMenu is displayed
    And ReportPage.dateBirthDropdownMenu should be present
    And if the drop-down menu ReportPage.dateBirthDropdownMenu is not filled in, I check there is ReportPage.dateBirthDropdownMenuErrorMandatoryField error message

    And I scroll down until ReportPage.nationalityResidenceDropdownMenu is displayed
    And ReportPage.nationalityResidenceDropdownMenu should be present
    And if the drop-down menu ReportPage.nationalityResidenceDropdownMenu is not filled in, I check there is ReportPage.nationalityResidenceDropdownMenuErrorMandatoryField error message

    And I scroll down until ReportPage.provinceDropdownMenu is displayed
    And ReportPage.provinceDropdownMenu should be present
    And if the drop-down menu ReportPage.provinceDropdownMenu is not filled in, I check there is ReportPage.provinceDropdownMenuErrorMandatoryField error message

    And I scroll down until ReportPage.municipalityDropdownMenu is displayed
    And ReportPage.municipalityDropdownMenu should be present
    And if the drop-down menu ReportPage.municipalityDropdownMenu is not filled in, I check there is ReportPage.municipalityDropdownMenuErrorMandatoryField error message

    And I scroll down until ReportPage.addressDropdownMenu is displayed
    And ReportPage.addressDropdownMenu should be present
    And if the drop-down menu ReportPage.addressDropdownMenu is not filled in, I check there is ReportPage.addressDropdownMenuErrorMandatoryField error message

    And I scroll down until ReportPage.streetNumberField is displayed
    And ReportPage.streetNumberField should be present
    And I clear ReportPage.streetNumberField field if filled in

    And I scroll down until ReportPage.postalCodeField is displayed
    And ReportPage.postalCodeField should be present
    And I clear ReportPage.postalCodeField field if filled in

    And I scroll down until ReportPage.sexDropdownMenu is displayed
    And ReportPage.sexDropdownMenu should be present

    And I scroll down until ReportPage.mobilePhoneField is displayed
    And ReportPage.mobilePhoneField should be present

    And I scroll down until ReportPage.phoneField is displayed
    And ReportPage.phoneField should be present

    And I scroll down until ReportPage.PECAddressField is displayed
    And ReportPage.PECAddressField should be present

    And I scroll down until ReportPage.emailField is displayed
    And ReportPage.emailField should be present

    And ReportPage.backButton should be present
    And ReportPage.confirmButton should be present

    Then I click ReportPage.confirmButton

    When I scroll up until ReportPage.streetNumberField is displayed
    And ReportPage.streetNumberFieldErrorMandatoryField should be present

    And I scroll down until ReportPage.postalCodeField is displayed
    And ReportPage.postalCodeFieldErrorMandatoryField should be present

    And I scroll down until ReportPage.sexDropdownMenu is displayed
    Then if the drop-down menu ReportPage.sexDropdownMenu is not filled in, I check there is ReportPage.sexDropdownMenuErrorMandatoryField error message

    When I scroll up until ReportPage.holderNameField is displayed

    And I fill in the fields on the "holder data" page

    Then I click ReportPage.confirmButton

    ################## Local information page ##################

    When I wait until ReportPage.localInformationTitle is visible

    And I scroll down until ReportPage.backButton is displayed
    And I click ReportPage.backButton
    And I wait until ReportPage.holderTitle is visible
    And I scroll down until ReportPage.confirmButton is displayed
    And I click ReportPage.confirmButton

    Then I wait until ReportPage.localInformationTitle is visible






