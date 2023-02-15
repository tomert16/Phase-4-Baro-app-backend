class FriendshipTableSerializer < ActiveModel::Serializer
  attributes :id, :user_1, :user_2, :status
  
  def user_1
    object.user_1.id
  end

  def user_2 
   { "real_name": object.user_2.real_name, 
     "username": object.user_2.username, 
     "email": object.user_2.email}
  end
end
