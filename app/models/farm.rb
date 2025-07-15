class Farm < ApplicationRecord
    has_many :users
    has_many :locations
    has_many :cows, through: :locations
end
