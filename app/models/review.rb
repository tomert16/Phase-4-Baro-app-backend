class Review < ApplicationRecord
  belongs_to :bar
  belongs_to :user

  validates_presence_of :star_rating, :bar_id, :user_id
end
