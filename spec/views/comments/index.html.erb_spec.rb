require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now))

    assign(:comments, [
      Comment.create!(post_id: @post.id, title: 'Mein Titel 1', author: 'Karl', body: 'Lorem Ipsum', published_at: DateTime.now),
      Comment.create!(post_id: @post.id, title: 'Mein Titel 2', author: 'Max', body: 'Lorem Ipsum', published_at: DateTime.now)
    ])
  end

  it "renders a list of comments" do
    render
  end
end

