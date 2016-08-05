require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      @post1 = Post.create!(title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now),
      @post2 = Post.create!(title: 'Titel2', author: 'Author2', body: 'blubb2', published_at: DateTime.now)
    ])
  end

  it "renders a list of posts" do
    render
    expect(rendered).to match @post1.author
    expect(rendered).to match @post1.title
    expect(rendered).to match @post1.body

    expect(rendered).to match @post2.author
    expect(rendered).to match @post2.title
    expect(rendered).to match @post2.body
  end
end
