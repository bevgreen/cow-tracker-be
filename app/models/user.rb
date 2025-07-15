class User < ApplicationRecord
  belongs_to :farm
  has_many :lists, dependent: :destroy
  has_many :list_shares, dependent: :destroy
  has_many :shared_lists, through: :list_shares, source: :list

end
