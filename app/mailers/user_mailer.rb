class UserMailer < ApplicationMailer

	def send_welcome_email(user)
    @user = user
    # @url  = "http://localhost:3000/#{user_path(@user)}"
    mail(to: @user.email, subject: 'Welcome to NATA')
  end

end
