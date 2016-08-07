require 'test_helper'

class CommentsIndexTest < ActionDispatch::IntegrationTest
  setup do
    @comment1 = comments(:one)
    @comment2 = comments(:two)
  end

  test "if there is a list of comments" do
    get "/comments"
    assert_select "table"
  end

  test "if the list of comments contains something" do
    get "/comments"
    assert_select "td", @comment1.author
    assert_select "td", @comment1.title
    assert_select "td", @comment1.body

    assert_select "td", @comment2.author
    assert_select "td", @comment2.title
    assert_select "td", @comment2.body

  end
end
