class Cow < ApplicationRecord
  belongs_to :location
  has_many :cow_lists, dependent: :destroy
  has_many :lists, through: :cow_lists
end
