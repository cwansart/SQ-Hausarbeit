require 'rails_helper'

RSpec.describe Post, type: :model do

  it "is not valid without attributes" do
    post = Post.new
    expect(post).not_to be_valid
  end

  it "is not valid without title" do
    post = Post.new(author: 'Author', body: 'Body', published_at: DateTime.now)
    expect(post).not_to be_valid
  end

  it "is not valid without author" do
    post = Post.new(title: 'Title', body: 'Body', published_at: DateTime.now)
    expect(post).not_to be_valid
  end

  it "is not valid without body" do
    post = Post.new(title: 'Title', author: 'Author', published_at: DateTime.now)
    expect(post).not_to be_valid
  end

  it "is not valid without publish date" do
    post = Post.new(title: 'Title', author: 'Author', body: 'Body')
    expect(post).not_to be_valid
  end

  it "is valid with valid attributes" do
    post = Post.new(title: 'Title', author: 'Author', body: 'Body', published_at: DateTime.now)
    expect(post).to be_valid
  end
end
