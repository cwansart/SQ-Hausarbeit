Given(/^I created a post with a comment with title "([^"]*)", author "([^"]*)" and body "([^"]*)"$/) do |title, author, body|
  post = Post.create! title: 'PostTitle', author: 'PostAuthor', body: 'PostBody', published_at: DateTime.now
  Comment.create! title: title, author: author, body: body, published_at: DateTime.now , post_id: post.id
end

When(/^I browse "([^"]*)" and click on "([^"]*)"$/) do |url, on_text|
  visit url
  click_on on_text
end
