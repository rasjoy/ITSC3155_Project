Given(/^I am signed in$/) do
   visit "/auth/google_oauth2/callback"
end

Then(/^I should see "([^"]*)" header$/) do |arg1|
    expect(page).to have_content(arg1)
end