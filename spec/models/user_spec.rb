require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
      before do
     @post = FactoryGirl.create(:user)
    end

   it "can be created" do
      expect(@user).to be_valid
    end

   xit "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end

   describe "custom name methods" do
    xit 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq("Snow, Jon")
    end
  end 
end