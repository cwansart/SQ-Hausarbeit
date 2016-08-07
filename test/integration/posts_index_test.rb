require 'test_helper'

class PostsIndexTest < ActionDispatch::IntegrationTest
  setup do
    @post1 = posts(:one)
    @post2 = posts(:two)
  end

  test "if there is a posts table" do
    get "/posts"
    assert_select "table"
  end

  test "if the list of posts contains something" do
    get "/posts"
    assert_select "td", @post1.author
    assert_select "td", @post1.title
    assert_select "td", @post1.body

    assert_select "td", @post2.author
    assert_select "td", @post2.title
    assert_select "td", @post2.body
  end

end
