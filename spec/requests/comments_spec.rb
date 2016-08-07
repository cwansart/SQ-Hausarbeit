require 'rails_helper'

RSpec.describe "Comments", type: :request do
  before(:each) do
    @post = Post.create! title: 'Titel', author: 'Author', body: 'blubb', published_at: DateTime.now
  end

  let(:valid_attributes) {
    { post_id: @post.id, title: 'Mein Titel', author: 'Karl', body: 'Lorem Ipsum', published_at: DateTime.now }
  }

  let(:new_attributes) {
    { post_id: @post.id, title: 'Mein Titel2', author: 'Karl2', body: 'Lorem Ipsum2', published_at: DateTime.now }
  }

  describe "GET /comments" do
    it "creates a comment and redirects to it's corresponding post" do
      get post_url(@post)
      expect(response).to render_template(:show)

      post comments_url, params: { comment: valid_attributes }
      expect(response).to redirect_to(Comment.last.post)
      follow_redirect!

      expect(response).to render_template(:show)
      expect(response.body).to include("Comment was successfully created.")
    end

    it "deletes a comment and redirects to it's post" do
      comment = Comment.create! valid_attributes

      get post_url(@post)
      expect(response).to render_template(:show)

      delete comment_url(comment)
      expect(response).to redirect_to(@post)
      follow_redirect!

      expect(response).to render_template(:show)
      expect(response.body).to include("Comment was successfully destroyed.")
    end

    it "updates a comment and redirect to it's post" do
      comment = Comment.create! valid_attributes

      get edit_comment_url(comment)
      expect(response).to render_template(:edit)

      patch comment_url(comment), params: { comment: new_attributes }
      expect(response).to redirect_to(@post)
      follow_redirect!

      expect(response).to render_template(:show)
      expect(response.body).to include("Comment was successfully updated.")
    end
  end
end
