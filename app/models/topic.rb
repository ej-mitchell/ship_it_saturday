class Topic < ApplicationRecord
  has_many :posts
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :description, length: { maximum: 250 }
end
