class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates_length_of :body, minimum: 5, maximum: 140

  has_many :comments, dependent: :destroy
end
