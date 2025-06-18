class List < ApplicationRecord
  belongs_to :user
  has_many :cow_lists, dependent: :destroy
  has_many :cows, through: :cow_lists
  has_many :list_shares, dependent: :destroy
  has_many :shared_users, through: :list_shares, source: :user
end
