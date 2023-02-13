class Bar < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    validates_presence_of :name, :image, :category, :location
end
