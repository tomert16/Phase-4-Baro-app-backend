class User < ApplicationRecord
    has_many :reviews
    has_many :bars, through: :reviews
end
