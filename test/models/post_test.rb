require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    post = Post.new(title: 'Title', author: 'Autor', body: 'Body', published_at: DateTime.now)
    assert post.save
  end

  test "is not valid without title" do
    post = Post.new(author: 'Autor', body: 'Body', published_at: DateTime.now)
    assert_not post.save
  end

  test "is not valid without author" do
    post = Post.new(title: 'Title', body: 'Body', published_at: DateTime.now)
    assert_not post.save
  end

  test "is not valid without body" do
    post = Post.new(title: 'Title', author: 'Autor', published_at: DateTime.now)
    assert_not post.save
  end

  test "is not valid without publish date" do
    post = Post.new(title: 'Title', author: 'Autor', body: 'Body')
    assert_not post.save
  end

  test "is not valid without attributes" do
    post = Post.new
    assert_not post.save
  end
end
