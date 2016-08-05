require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now))

    @comment1 = Comment.create!(post_id: @post.id, title: 'Mein Titel 1', author: 'Karl', body: 'Lorem Ipsum', published_at: DateTime.now)
    @comment2 = Comment.create!(post_id: @post.id, title: 'Mein Titel 2', author: 'Max', body: 'Lorem Ipsum', published_at: DateTime.now)

    assign(:comments, [
        @comment1,
        @comment2
    ])
  end

  it "renders a list of comments" do
    render
    expect(rendered).to match @comment1.author
    expect(rendered).to match @comment1.title
    expect(rendered).to match @comment1.body

    expect(rendered).to match @comment2.author
    expect(rendered).to match @comment2.title
    expect(rendered).to match @comment2.body
  end
end

