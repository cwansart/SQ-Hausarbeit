require 'test_helper'

class CommentsShowTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "if the comment is displayed" do
    get "/comments/" + @comment.id.to_s

    assert_select "h1", @comment.title
    assert_select "span", @comment.body
    assert_select "span", @comment.author

  end

end
