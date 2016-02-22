require 'rails_helper'

describe "Signing up", :js => true do

	it 'will visit home page and sign up a new user' do 
		
		visit '/'
		click_link 'Create Account'

			fill_in 'First Name', :with => 'Nino'
			fill_in "Last Name", :with => 'Rosella'
			fill_in 'Email', :with => "ninorosella@gmail.com"
			fill_in 'Password (Min 8 characters)', :with => 'password123'
			fill_in 'Confirm Password', :with => 'password123'
		
		click_button 'Sign Up'
		expect(page).to have_content 'Welcome! You have signed up successfully'
		expect(current_path).to eq root_path
	end

end