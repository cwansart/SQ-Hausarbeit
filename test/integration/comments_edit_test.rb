require 'test_helper'

class CommentsEditTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "if there is a comment-edit form" do
    get "/comments/" + @comment.id.to_s + "/edit"
    assert_select "form"
  end
end
