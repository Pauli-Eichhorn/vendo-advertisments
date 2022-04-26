class ApplicationMailer < ActionMailer::Base
  default from: 'vendoadvertisment@gmail.com'
  layout 'mailer'

  def confirmation_mail
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
