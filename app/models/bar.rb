class Bar < ApplicationRecord
    has_many :reviews
    has_many :users, thorugh: :reviews
end
