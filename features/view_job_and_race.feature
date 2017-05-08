Feature: View Available Jobs and Races
  As a DM
  So that I can build a campaign
  I want to view Available Jobs and Races
 

Scenario: As a DM, I want to be able to navigate to Available Jobs
  Given I am at the home page
  Given I am signed in
  When I click on the "Available Jobs" link
  Then I should be on the "Available Jobs" page
  And I should see "Jobs" header
  
Scenario: As a DM, I want to be able to navigate to Available Races
  Given I am at the home page
  Given I am signed in
  When I click on the "Available Races" link
  Then I should be on the "Available Races" page
  And I should see "Races" header
