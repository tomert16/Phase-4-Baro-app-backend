class FriendshipTableSerializer < ActiveModel::Serializer
  attributes :id, :user_1, :user_2, :friend_status
  
  def user_1
    { "id":  object.user_1.id,
      "real_name": object.user_1.real_name, 
      "username": object.user_1.username, 
      "email": object.user_1.email}
  end

  def user_2 
   { "id": object.user_2.id,
    "real_name": object.user_2.real_name, 
     "username": object.user_2.username, 
     "email": object.user_2.email}
  end
end
