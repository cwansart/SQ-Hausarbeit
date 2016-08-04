require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now))
  end

  it "renders attributes in <p>" do
    render
  end
end
