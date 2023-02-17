class FriendshipTable < ApplicationRecord
    belongs_to :user_1, class_name: :User
    belongs_to :user_2, class_name: :User

    validates_presence_of :user_2
end
