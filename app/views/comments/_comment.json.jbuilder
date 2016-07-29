json.extract! comment, :id, :author, :title, :body, :published_at, :created_at, :updated_at
json.url comment_url(comment, format: :json)