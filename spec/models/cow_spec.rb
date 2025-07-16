require 'rails_helper'

RSpec.describe Cow, type: :model do
    it {should belong_to(:location)}
    it {should have_many(:cow_lists)}
    it {should have_many(:lists)}
end