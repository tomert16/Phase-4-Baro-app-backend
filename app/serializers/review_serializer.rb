class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :star_rating, :content, :bar_id, :username
  # has_one :bar
  # has_one :user

  def username 
    object.user.username
  end
end
