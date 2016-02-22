require 'rails_helper'

RSpec.describe User, type: :model do

	it "is has a valid factory" do
    expect(build(:user)).to be_valid
  end
  
	it 'is valid with a name, last_name, email and password' do
		expect(build(:user)).to be_valid
	end

	it 'is invalid without a name' do
		user = build(:user, name: nil)
		user.valid?
		expect(user.errors[:name]).to include("can't be blank")
	end

	it 'is invalid without a last_name' do
		user = user = build(:user, last_name: nil)
		user.valid?
		expect(user.errors[:last_name]).to include("can't be blank")
	end

	it 'is invalid without an email' do
		user = build(:user, email: nil)
		user.valid?
		expect(user.errors[:email]).to include("can't be blank")
	end

	it 'is invalid without a password' do
		user = user = build(:user, password: nil)
		user.valid?
		expect(user.errors[:password]).to include("can't be blank")
	end

	it 'is invalid with a duplicate email address' do
		create(:user, email: "joe@bloggs.com")
		user = build(:user, email: "joe@bloggs.com")
		user.valid?
		expect(user.errors[:email]).to include("has already been taken")
	end


end
