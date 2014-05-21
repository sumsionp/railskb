Feature: user saves note

  As a user
  I want to save a note
  So that I can reference it later

  Criteria: save note
    Given I have not saved the note
    When I save the note
    Then I will see "Note is safely saved!"
    And I will see the note text
    And I will see the generated tags
