class UserSerializer < ActiveModel::Serializer
  attributes :id, :real_name, :username, :email

  has_many :reviews
end
