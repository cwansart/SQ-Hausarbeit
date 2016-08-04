require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now))
    @comment = assign(:comment, Comment.create!(post_id: @post.id, title: 'Mein Titel', author: 'Karl', body: 'Lorem Ipsum', published_at: DateTime.now))
  end

  it "renders attributes in <p>" do
    render
  end
end
