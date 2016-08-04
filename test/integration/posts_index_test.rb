require 'test_helper'

class PostsIndexTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "if there is a posts table" do
    get "/posts"
    assert_select "table"
  end

  test "if comment is displayed" do
    get comments_url
    assert_select "td", @comment.author
    assert_select "td", @comment.title
    assert_select "td", @comment.body
  end
end
