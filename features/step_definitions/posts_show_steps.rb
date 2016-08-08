Given(/^I created a post with a comment with title "([^"]*)", author "([^"]*)" and body "([^"]*)"$/) do |title, author, body|
  post = Post.create! title: 'Test', author: 'Test', body: 'Test', published_at: DateTime.now
  Comment.create! title: title, author: author, body: body, published_at: DateTime.now, post_id: post.id
end

When(/^I browse "([^"]*)" and click on "([^"]*)"$/) do |url, click_text|
  visit url
  expect(page).to have_content("Destroy")
  click_on(click_text)
end
