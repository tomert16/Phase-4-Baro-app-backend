class Review < ApplicationRecord
  belongs_to :bar
  belongs_to :user

  validates_presence_of :star_rating, :bar_id, :user_id, :content
  validates :star_rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :content, length: { minimum: 5, maximum: 100 }
end
