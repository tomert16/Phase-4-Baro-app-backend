class UserSerializer < ActiveModel::Serializer
  attributes :id, :real_name, :username, :email
end
