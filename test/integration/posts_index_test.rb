require 'test_helper'

class PostsIndexTest < ActionDispatch::IntegrationTest
  test "if there is a posts table" do
    get "/posts"
    assert_select "table"
  end
end
