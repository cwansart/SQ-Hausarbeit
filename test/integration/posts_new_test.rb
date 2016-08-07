require 'test_helper'

class PostsNewTest < ActionDispatch::IntegrationTest

  test "if there is a post-new form" do
    get "/posts/new"
    assert_select "form"
  end

end
