class UserSerializer < ActiveModel::Serializer
  attributes :id, :display_name, :username, :password_digest
end
