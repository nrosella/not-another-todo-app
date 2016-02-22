module CapybaraHelper

  def login_user(user)
    visit '/'
    click_link 'Log in'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Log in'
  end

  def logout_user(user)
  	click_link 'Sign out'
  end

end

