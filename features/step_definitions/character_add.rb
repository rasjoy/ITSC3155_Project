Given(/^I am at the home page$/) do
  visit root_path
end

When(/^I click on the "([^"]*)" link$/) do |page_name|
  click_link page_name
end

When(/^I should click on the "([^"]*)"  button$/) do |button_name|
  click_button button_name
end

Then(/^I should be on "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^I should see the "([^"]*)" field$/) do |field_name|
    expect(page).to have_field(field_name)
end

Then(/^I should see the "([^"]*)" select$/) do |select_name|
    expect(page).to have_select(select_name)
end

Then(/^I should enter "([^"]*)" in the "([^"]*)" field$/) do |field_value, field_name|  
  page.fill_in(field_name, :with => field_value)
end

Then(/^I should have "([^"]*)" in "([^"]*)" select$/) do |field_value, select_name|
  page.has_select?(select_name, :selected => field_value)
end

Then(/^I want verify that "([^"]*)", "([^"]*)", and "([^"]*)" are in "([^"]*)" select$/) do |arg1, arg2, arg3, select_name|
  page.has_select?(select_name, :with_options => [arg1, arg2, arg3])
end

Then(/^I should see "([^"]*)" in the table$/) do |arg1|
  expect(page).to have_content(arg1)
end

Then(/^I should click "([^"]*)" link$/) do |page_name|
  click_link page_name
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

When(/^I should click on the "([^"]*)" button$/) do |button_name|
  click_button button_name
end

