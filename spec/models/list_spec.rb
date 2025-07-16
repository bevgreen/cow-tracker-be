require 'rails_helper'

RSpec.describe List, type: :model do
    it {should belong_to(:user)}
    it {should have_many(:cow_lists)}
    it {should have_many(:cows)}
    it {should have_many(:list_shares)}
    it {should have_many(:shared_users)}
end