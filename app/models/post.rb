class Post < ApplicationRecord
  has_many :comments

  validates :author, presence: true
  validates :title, presence: true
  validates :body, presence: true
end
