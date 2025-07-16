require 'rails_helper'

RSpec.describe Farm, type: :model do
    it {should have_many(:users)}
    it {should have_many(:locations)}
end