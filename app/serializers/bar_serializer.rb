class BarSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :category, :price, :closing_time, :location
end
