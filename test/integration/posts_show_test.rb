require 'test_helper'

class PostsShowTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "if the post is displayed" do
    get "/posts/" + @post.id.to_s

    assert_select "h1", "Title: " + @post.title
  end
end
