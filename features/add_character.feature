Feature: Create a new character
  As a DM
  So that I can build a campaign
  I want be able to add a new Character sheet
 

Scenario: As a DM I want to be able to navigate to the New Character form
  Given I am at the home page
  When I click on the "Create Character" link
  Then I should be on the "Create Character" page
  And I should see the "Name" field
  And I should see the "Job" select
  And I should see the "Race" select
  
  
Scenario: As a DM I want to create a character named Trogdor the Burninator who is an Rogue and Joe
  Given I am at the home page
  When I click on the "Create Character" link
  Then I should be on the "Create Character" page
  And I should see the "Name" field
  And I should enter "Trogdor the Burninator" in the "Name" field
  And I should see the "Job" select
  And I should have "Rogue" in "Job" select
  And I should see the "Race" select
  And I should have "joe" in "Race" select