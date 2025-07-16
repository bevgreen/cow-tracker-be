require 'rails_helper'

RSpec.describe CowList, type: :model do 
    it {should belong_to(:cow)}
    it {should belong_to(:list)}
end