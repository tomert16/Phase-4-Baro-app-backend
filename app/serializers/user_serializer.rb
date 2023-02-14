class UserSerializer < ActiveModel::Serializer
  attributes :id, :real_name, :username, :password_digest
end
