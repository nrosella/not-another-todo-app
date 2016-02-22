require 'rails_helper'

RSpec.describe User, type: :model do
  
	it 'is valid with a name, last_name, email and password' do
		user = User.new(
			name: "Joe",
			last_name: "Bloggs",
			email: "joe@bloggs.com",
			password: "password123"
			)
		expect(user).to be_valid
	end

	it 'is invalid without a name' do
		user = User.new(
			name: nil
			)
		user.valid?
		expect(user.errors[:name]).to include("can't be blank")
	end

	it 'is invalid without a last_name' do
		user = User.new(
			last_name: nil
			)
		user.valid?
		expect(user.errors[:last_name]).to include("can't be blank")
	end

	it 'is invalid without an email' do
		user = User.new(
			password: nil
			)
		user.valid?
		expect(user.errors[:password]).to include("can't be blank")
	end

	it 'is invalid without a password' do
		user = User.new(
			password: nil
			)
		user.valid?
		expect(user.errors[:password]).to include("can't be blank")
	end

	it 'is invalid with a duplicate email address' do
		User.create(
			name: "Joe",
			last_name: "Bloggs",
			email: "joe@bloggs.com",
			password: "password123"
			)
		user = User.new(
			name: "Joe",
			last_name: "Bloggs",
			email: "joe@bloggs.com",
			password: "password123"
			)
		user.valid?
		expect(user.errors[:email]).to include("has already been taken")
	end

end
