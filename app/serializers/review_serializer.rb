class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :star_rating, :content
  has_one :bar
  has_one :user
end
