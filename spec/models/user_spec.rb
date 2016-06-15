require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without a email" do
  	FactoryGirl.build(:user, email: nil).should_not be_valid
  end
  it "is invalid without a password" do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end

  it 'email must be unique' do
		user = FactoryGirl.build(:user, email: "blog@test.com")
		user.save

		u = FactoryGirl.build(:user, email: "blog@test.com")
		u.save

		expect(u.errors.get(:email)).to eq(["has already been taken"])
  end

  it 'email with invalid format is invalid' do
	  user = FactoryGirl.build(:user, email: "blog")
	  user.save

	  expect(user.errors.get(:email)).to eq(['is invalid'])
	end

	it 'password length less than 5 characters is invalid' do
    user = FactoryGirl.build(:user, password: '1234')
    result = user.save

    expect(result).to be(false)
  end

  it 'password length must be atleast 5 characters long' do
    user = FactoryGirl.build(:user, password: '12345')
    result = user.save

    expect(result).to be(true)
  end
  
end
