require 'rails_helper'

RSpec.describe User, type: :model do
    it {should have_many(:lists)}
    it {should have_many(:list_shares)}
    it {should have_many(:shared_lists)}
    it {should belong_to(:farm)}
end
