class Comment < ApplicationRecord
  belongs_to :post

  validates :post_id, presence: true
  validates :body, presence: true
  validates :body, length: { maximum: 5000 }
  validates :username, length: { maximum: 20 }
end
