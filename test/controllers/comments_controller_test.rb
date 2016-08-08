require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get comments_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_url
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: { post_id: @comment.post.id ,author: @comment.author, body: @comment.body, published_at: @comment.published_at, title: @comment.title } }
    end

    assert_redirected_to post_url(@comment.post)
  end

  test "should not create without author" do
    assert_no_difference('Comment.count') do
      post comments_url, params: { comment: { post_id: @comment.post.id, body: @comment.body, published_at: @comment.published_at, title: @comment.title } }
    end
  end

  test "should not create without body" do
    assert_no_difference('Comment.count') do
      post comments_url, params: { comment: { post_id: @comment.post.id, author: @comment.author, published_at: @comment.published_at, title: @comment.title } }
    end
  end

  test "should not create without title" do
    assert_no_difference('Comment.count') do
      post comments_url, params: { comment: { post_id: @comment.post.id, author: @comment.author, body: @comment.body, published_at: @comment.published_at } }
    end
  end

  test "should not create without post_id" do
    assert_no_difference('Comment.count') do
      post comments_url, params: { comment: { author: @comment.author, body: @comment.body, published_at: @comment.published_at, title: @comment.title } }
    end
  end

  test "should show comment" do
    get comment_url(@comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_url(@comment)
    assert_response :success
  end

  test "should update comment" do
    patch comment_url(@comment), params: { comment: { post_id: @comment.post.id, author: @comment.author, body: @comment.body, published_at: @comment.published_at, title: @comment.title } }
    assert_redirected_to post_url(@comment.post)
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to @comment.post
  end
end
