class FriendshipTableSerializer < ActiveModel::Serializer
  attributes :id, :user_1, :user_2, :status
end
