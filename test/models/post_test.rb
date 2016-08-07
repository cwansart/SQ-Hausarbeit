require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post without author, body and title" do
    post = Post.new
    assert_not post.save
  end

  test "should not save without author" do
    post = Post.new body: "Lorem Ipsum", title: "My Title", published_at: DateTime.now
    assert_not post.save
  end

  test "should not save without body" do
    post = Post.new author: "Karl", title: "My Title", published_at: DateTime.now
    assert_not post.save
  end

  test "should not save without title" do
    post = Post.new author: "Karl", body: "Lorem Ipsum", published_at: DateTime.now
    assert_not post.save
  end

  test "should not save without publish date" do
    post = Post.new author: "Karl", body: "Lorem Ipsum", title: "My Title"
    assert_not post.save
  end

  test "should save comment" do
    post = Post.new author: "Karl", title: "Hello World", body: "Lorem Ipsum", published_at: DateTime.now
    assert post.save
  end
end
