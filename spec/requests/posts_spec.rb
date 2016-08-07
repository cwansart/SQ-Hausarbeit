require 'rails_helper'

RSpec.describe "Posts", type: :request do
  let(:valid_attributes) {
    { title: 'Mein Titel', author: 'Karl', body: 'Lorem Ipsum', published_at: DateTime.now }
  }

  let(:new_attributes) {
    { title: 'Mein Titel2', author: 'Karl2', body: 'Lorem Ipsum2', published_at: DateTime.now }
  }

  describe "GET /posts" do
    it "creates a post and redirects to show view" do
      get new_post_url
      expect(response).to render_template(:new)

      post posts_url, params: { post: valid_attributes }
      expect(response).to redirect_to(Post.last)
      follow_redirect!

      expect(response).to render_template(:show)
      expect(response.body).to include("Post was successfully created.")
    end

    it "deletes a post and redirects posts index" do
      post = Post.create! valid_attributes

      get posts_url
      expect(response).to render_template(:index)

      delete post_url(post)
      expect(response).to redirect_to(posts_url)
      follow_redirect!

      expect(response).to render_template(:index)
      expect(response.body).to include("Post was successfully destroyed.")
    end

    it "updates a post and redirect to show" do
      post = Post.create! valid_attributes

      get edit_post_url(post)
      expect(response).to render_template(:edit)

      patch post_url(post), params: { post: new_attributes }
      expect(response).to redirect_to(post)
      follow_redirect!

      expect(response).to render_template(:show)
      expect(response.body).to include("Post was successfully updated.")
    end
  end
end
