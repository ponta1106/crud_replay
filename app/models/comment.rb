class Comment < ApplicationRecord
  belongs_to :post
  validates :body, presence: true
  validates_length_of :body, minimum: 5, maximum: 140
end
