class Post < ApplicationRecord
  belongs_to :topic
  has_many :comments

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :body, presence: true
  validates :body, length: { maximum: 5000 }
  validates :username, length: { maximum: 20 }
  validates :topic_id, presence: true
end
