require 'rails_helper'

RSpec.describe "Comments", type: :request do
  before(:each) do
    @post = Post.create!(title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now)
    @comment = Comment.create!(post_id: @post.id, title: 'Mein Titel', author: 'Karl', body: 'Lorem Ipsum', published_at: DateTime.now)
  end

  describe "GET /comments" do
    it "works! (now write some real specs)" do
      get comments_path
      expect(response).to have_http_status(200)
    end
  end
end
