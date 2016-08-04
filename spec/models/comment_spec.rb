require 'rails_helper'

RSpec.describe Comment, type: :model do

  before(:each) do
   @post = Post.create!(title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now)
  end

  it "is not valid without attributes" do
    comment = Comment.new
    expect(comment).not_to be_valid
  end

  it "is not valid without author" do
    comment = Comment.new(post_id: @post.id, title: 'Mein Titel 1', body: 'Lorem Ipsum', published_at: DateTime.now)
    expect(comment).not_to be_valid
  end

  it "is not valid without body" do
    comment = Comment.new(post_id: @post.id, title: 'Mein Titel 1', author: 'Karl', published_at: DateTime.now)
    expect(comment).not_to be_valid
  end

  it "is not valid without title" do
    comment = Comment.new(post_id: @post.id, body: 'Lorem Ipsum', author: 'Karl', published_at: DateTime.now)
    expect(comment).not_to be_valid
  end

  it "is not valid without publish date" do
    comment = Comment.new(post_id: @post.id, title: 'Mein Titel 1', author: 'Karl', body: 'Lorem Ipsum')
    expect(comment).not_to be_valid
  end

  it "is valid with valid attributes" do
    comment = Comment.new(post_id: @post.id, title: 'Mein Titel 1', author: 'Karl', body: 'Lorem Ipsum', published_at: DateTime.now)
    expect(comment).to be_valid
  end
end
