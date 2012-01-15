class UserMailer < ActionMailer::Base
  # Change to default from address
  default :from => "alex@fragmentlabs.com"

  # Email when user registers
  def registration_confirmation(user)
    @user = user
    mail :to => "#{user.name} <#{user.email}>", :subject => "Thanks for Registering"
  end
  
  # Sending password reset email
  def password_reset(user)
    @user = user
    mail :to => "#{user.name} <#{user.email}>", :subject => "Password Reset Request"
  end
  
  # Email when admin creates a user
  def admin_create_user_email(user)
    @user = user
    mail :to => "#{user.name} <#{user.email}>", :subject => "An Account Has Been Created For You"
  end
end