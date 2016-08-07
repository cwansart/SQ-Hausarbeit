Given(/^no posts where created$/) do
  # no posts
end

When(/^I browse "([^"]*)"$/) do |path|
  visit path
end

Then(/^I should see the text "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^nothing$/) do
  # really nothing
end

Given(/^I created a post with the title "([^"]*)", author "([^"]*)" and body "([^"]*)"$/) do |title, author, body|
  Post.create! title: title, author: author, body: body, published_at: DateTime.now
end

Then(/^I should not see the text "([^"]*)"$/) do |text|
  expect(page).not_to have_content(text)
end

Then(/^I should see the input field "([^"]*)"$/) do |field|
  expect(page).to have_field(field)
end

Then(/^I should see the button "([^"]*)"$/) do |button|
  expect(page).to have_button(button)
end
