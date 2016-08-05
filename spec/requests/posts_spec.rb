require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      get posts_path
      expect(response).to have_http_status(200)
    end
  end
  
#  describe "POST /posts" do
#    it 'should save the post and show a success message' do
#
#    end
#  end
end
