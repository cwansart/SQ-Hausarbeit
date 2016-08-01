require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should not save comment without author, body, title and post_id" do
    comment = Comment.new
    assert_not comment.save
  end

  test "should not save without author" do
    comment = Comment.new(body: "Lorem Ipsum", title: "My Title", post_id: posts(:one).id, published_at: DateTime.now)
    assert_not comment.save
  end

  test "should not save without body" do
    comment = Comment.new(author: "Karl", title: "My Title", post_id: posts(:one).id, published_at: DateTime.now)
    assert_not comment.save
  end

  test "should not save without title" do
    comment = Comment.new(author: "Karl", body: "Lorem Ipsum", post_id: posts(:one).id, published_at: DateTime.now)
    assert_not comment.save
  end

  test "should not save without post_id" do
    comment = Comment.new(author: "Karl", body: "Lorem Ipsum", title: "My Title", published_at: DateTime.now)
    assert_not comment.save
  end

  test "should not save without publish date" do
    comment = Comment.new(author: "Karl", body: "Lorem Ipsum", title: "My Title", post_id: posts(:one).id)
    assert_not comment.save
  end
end
