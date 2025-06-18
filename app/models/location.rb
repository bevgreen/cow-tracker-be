class Location < ApplicationRecord
  belongs_to :farm
  has_many :cows, dependent: :nullify
  
end
