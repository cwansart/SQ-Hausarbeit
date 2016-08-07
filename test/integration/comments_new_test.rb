require 'test_helper'

class CommentsNewTest < ActionDispatch::IntegrationTest

  test "if there is a comment-new form" do
    get "/comments/new"
    assert_select "form"
  end

end
