require 'rails_helper'
include CapybaraHelper

	describe "Creating a new list after sign in", :js => true do 
		it 'will sign in and visit the home page and create a new challenge' do 
			user = create(:user)
			list = create(:list)
			login_user(user)
			expect {
				fill_in 'Enter mission critical task one', with: list.item_one
		    fill_in 'Enter mission critical task two', with: list.item_two
		    fill_in 'Enter task three', with: list.item_three
		    fill_in 'Enter task four', with: list.item_four
		    click_button "Create a new list for tomorrow"
		    }.to change(List, :count).by(1)

		  expect(page).to have_content "View all lists"
		  logout_user(user)
		end
	
	end

