require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(post_id: posts(:one).id, title: 'Mein Titel', author: 'Karl', body: 'Lorem Ipsum', published_at: DateTime.now))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do
    end
  end
end
