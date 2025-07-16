require 'rails_helper'

RSpec.describe ListShare, type: :model do 
    it {should belong_to(:list)}
    it {should belong_to(:user)}
end