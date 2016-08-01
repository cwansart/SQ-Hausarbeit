json.extract! post, :id, :author, :title, :body, :published_at, :created_at, :updated_at
json.url post_url(post, format: :json)