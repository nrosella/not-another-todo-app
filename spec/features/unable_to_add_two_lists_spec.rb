require 'rails_helper'
include CapybaraHelper

	describe "Can't add more than one list for a day", :js => true do 
		it 'will sign in, create a todo list redirect to root_path' do 
			user = create(:user)
			list = create(:list)
			login_user(user)

				fill_in 'Enter mission critical task one', with: list.item_one
		    fill_in 'Enter mission critical task two', with: list.item_two
		    fill_in 'Enter task three', with: list.item_three
		    fill_in 'Enter task four', with: list.item_four
		    click_button "Create a new list for tomorrow"
		  
		  click_link "View all lists"

		  expect(page).to have_content "You've already started tomorrow's list"
		  logout_user(user)
		end
	
	end

