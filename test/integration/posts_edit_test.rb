require 'test_helper'

class PostsEditTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "if there is a post-edit form" do
    get "/posts/" + @post.id.to_s + "/edit"
    assert_select "form"
  end
end
