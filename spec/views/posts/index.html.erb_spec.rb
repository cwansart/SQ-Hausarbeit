require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now),
      Post.create!(title: 'Titel2', author: 'Author2', body: 'blubb2', published_at: DateTime.now)
    ])
  end

  it "renders a list of posts" do
    render
  end
end
