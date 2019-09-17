class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'

  # Не могу удержаться, оставлю subject как есть ;)
  def daily_email(email)
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end
end
