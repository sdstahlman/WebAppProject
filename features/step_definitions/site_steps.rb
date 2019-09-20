Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on the "([^"]*)" link$/) do |page_name|
  click_link page_name
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^I should see the "([^"]*)" field$/) do |field_name|
  expect(page).to have_content(field_name)
end

Then(/^I should see the "([^"]*)" team$/) do |team_name|
  expect(page).to have_content(team_name)
end

Then(/^I should see the "([^"]*)" column$/) do |column_name|
  expect(page).to have_content(column_name)
end

Then(/^I should see the "([^"]*)" message$/) do |message|
  expect(page).to have_content(message)
end

Then(/^I should not see the "([^"]*)" link$/) do |link_name|
  expect(page).to have_no_content(link_name)
end