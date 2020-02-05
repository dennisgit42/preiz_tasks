class AccountDeletionMailer < ApplicationMailer
  default from: 'do-not-reply@preiztasks.com'

  def account_deletion_email(user)
    @user_name = user.name
    @user_email = user.email
    mail(to: @user_email, subject: 'Your account has been deleted.')
  end
end
