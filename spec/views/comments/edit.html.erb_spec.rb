require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now))
    @comment = assign(:comment, Comment.create!(post_id: @post.id, title: 'Mein Titel', author: 'Karl', body: 'Lorem Ipsum', published_at: DateTime.now))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do
    end
  end
end
