require 'rails_helper'

RSpec.describe List, type: :model do
  
	it 'is valid with an item_one' do
		list = List.new(item_one: "Task one")
		expect(list).to be_valid
	end

	it 'is invalid without an item_one' do
		list = List.new(item_one: nil)
		list.valid?
		expect(list.errors[:item_one]).to include("can't be blank")
	end

end
