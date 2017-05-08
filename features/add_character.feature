Feature: Create a new character
  As a DM
  So that I can build a campaign
  I want be able to add a new Character sheet
 

Scenario: As a DM I want to be able to navigate to the New Character form
  Given I am at the home page
  Given I am signed in
  When I click on the "Create Character" link
  Then I should be on the "Create Character" page
  And I should see the "Name" field
  And I should see the "Job" select
  And I should see the "Race" select
  
  
Scenario: As a DM I want to create a character named Trogdor the Burninator who is an Rogue and LightFoot Halfing 
  Given I am at the home page
  Given I am signed in
  When I click on the "Create Character" link
  Then I should be on the "Create Character" page
  And I should see the "Name" field
  And I should enter "Trogdor the Burninator" in the "Name" field
  And I should see the "Job" select
  And I want verify that "Rogue", "Fighter", and "Wizard" are in "Job" select
  And I should have "Rogue" in "Job" select
  And I should see the "Race" select
  And I should have "LightFoot Halfing" in "Race" select
  Then I should click on the "Create Character"  button
  Then I should be on the "View Character" page
  And I should see "Trogdor the Burninator" in the table
  When I should click "Edit" link
  And I should see the "Name" field
  And I should see the "Job" select
  And I should see the "Race" select
  Then I should click on the "Update Character" button
  Then I should be on the "Show Character" page
  And I should see "Trogdor the Burninator" in the table
  Then I should click on the "Delete" button
  Then I should click on the "Okay" button
  Then I should be on "Characters" page
  
  