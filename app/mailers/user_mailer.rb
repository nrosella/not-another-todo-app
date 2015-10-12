class UserMailer < ApplicationMailer

	def send_welcome_email(user)
    @user = user
    @url  = "http://localhost:3000/#{new_user_registration_path(@user)}"
    mail(to: @user.email, subject: 'Welcome to NATA!')
  end

  def decline
    #binding.pry
  end

end