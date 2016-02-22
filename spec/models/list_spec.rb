require 'rails_helper'

RSpec.describe List, type: :model do

	it "is has a valid factory" do
    expect(build(:list)).to be_valid
  end
  
	it 'is valid with an item_one' do
		expect(build(:list)).to be_valid
	end

	it 'is invalid without an item_one' do
		list = build(:list, item_one: nil)
		list.valid?
		expect(list.errors[:item_one]).to include("can't be blank")
	end

	describe "format list title based on date" do
		 before :each do
		 	@list = create(:list, created_at: Time.new(2016, 3, 1, 22, 35, 0))
		 end

		context "today's todo list" do
			it "returns the text today's todo list" do
				@list.created_at = Time.now - 1.day
				expect(@list.title).to eq "Today's Todo List"
			end
		end

		context "not today's todo list" do
			it "returns the title as date formatted in whole words as the default" do
				@list.format = 0
				expect(@list.title).to eq "Wednesday 02 March 2016"
			end
			it 'returns the title in UK format digits separated by slashes' do
				@list.format = 2
				expect(@list.title).to eq "02/03/2016"
			end
			it 'returns the title in US format digits separated by slashes' do
				@list.format = 3
				expect(@list.title).to eq "03/02/2016"
			end
			it 'returns placeholder text if format is nil' do
				@list.format = nil
				expect(@list.title).to eq "Placeholder"
			end
		end
	end

	describe "checks if list is editable" do
		before :each do
			@list = create(:list)
		end

		context "was created today" do
			it 'is editable' do
				expect(@list.editable).to eq true
			end
		end
		context "was not created today" do
			it "is not editable" do
				@list.created_at -= 2.days
				expect(@list.editable).to eq false
			end
		end
	end

	describe "checks if an item is completed" do
		before :each do 
			@list = create(:list)
		end

		context "if completed is set to false" do
			it 'returns false by default' do
				expect(@list.is_completed).to eq false
			end
		end

		context 'if completed is set to true' do
			it 'returns true' do
				@list.completed = true
				expect(@list.is_completed).to eq true
			end
		end
	end


end
