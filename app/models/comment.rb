class Comment < ApplicationRecord
  belongs_to :post

  validates_associated :post
  validates :author, presence: true
  validates :title, presence: true
  validates :body, presence: true
end
