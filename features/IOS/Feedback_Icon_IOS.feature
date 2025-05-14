Feature: Feedback_Icon_IOS
  Scenario: Feedback_Icon_IOS

    Given LoginPage.loginButton should be present
    And I log in with the credentials of the "s.sciuto" user
    And ViewingRoutesPage.feedbackIcon should be present

    When I click ViewingRoutesPage.feedbackIcon
    And ViewingRoutesPage.reportingDropdownMenu should be present
    And if reporting type is not selected ViewingRoutesPage.mySuggestionInputField should not be present
    And if reporting type is not selected ViewingRoutesPage.reportingTopicDropdownMenu should not be present
    Then if reporting type is not selected ViewingRoutesPage.describeProblemTextBox should not be present

#    --- Report: Problem ---

    When I click ViewingRoutesPage.reportingDropdownMenu
    And I click ViewingRoutesPage.problemLabel
    And ViewingRoutesPage.reportingTopicDropdownMenu should be present

    And I click ViewingRoutesPage.reportingTopicDropdownMenu
    And ViewingRoutesPage.interfaceOperationOption should be present
    And ViewingRoutesPage.suggestedRoutesOption should be present
    And ViewingRoutesPage.dataInconsistenciesOption should be present
    And ViewingRoutesPage.otherOption should be present
    And I click ViewingRoutesPage.interfaceOperationOption

    And I scroll down until ViewingRoutesPage.describeProblemTextBox is displayed
    And ViewingRoutesPage.describeProblemTextBox should be present
    And I click ViewingRoutesPage.describeProblemTextBox
    And I input "test" in ViewingRoutesPage.describeProblemTextBox
    And I click ViewingRoutesPage.describeProblemLabel

    And I scroll down until ViewingRoutesPage.tryToFixErrorsDropdownMenu is displayed
    Then ViewingRoutesPage.tryToFixErrorsDropdownMenu should be present
    And I click ViewingRoutesPage.tryToFixErrorsDropdownMenu
    And ViewingRoutesPage.yesOptionTryToFixErrorsDropdownMenu should be present
    And ViewingRoutesPage.noOptionTryToFixErrorsDropdownMenu should be present
    And I click ViewingRoutesPage.yesOptionTryToFixErrorsDropdownMenu

    And I scroll down until ViewingRoutesPage.starsToRateExperience is displayed
    And I check that there are stars ViewingRoutesPage.starsToRateExperience to rate the experience

    And ViewingRoutesPage.submitButton should be present
    And I click ViewingRoutesPage.submitButton
    Then I wait until ViewingRoutesPage.sentFeedbackPopUp is present

#    --- Report: Suggestion ---

    When I wait until ViewingRoutesPage.sentFeedbackPopUp disappear
    And I click ViewingRoutesPage.feedbackIcon
    And I wait until element ViewingRoutesPage.reportingDropdownMenu is displayed
    And I click ViewingRoutesPage.reportingDropdownMenu
    And I click ViewingRoutesPage.feedbackOrSuggestionLabel
    And I scroll down until ViewingRoutesPage.mySuggestionInputField is displayed
    And ViewingRoutesPage.mySuggestionInputField should be present
    And I click ViewingRoutesPage.mySuggestionInputField
    And I input "test" in ViewingRoutesPage.mySuggestionInputField
    And I click ViewingRoutesPage.mySuggestionText

    And I scroll down until ViewingRoutesPage.starsToRateExperience is displayed
    And I check that there are stars ViewingRoutesPage.starsToRateExperience to rate the experience

    And ViewingRoutesPage.submitButton should be present
    And I click ViewingRoutesPage.submitButton
    Then I wait until ViewingRoutesPage.sentFeedbackPopUp is present
