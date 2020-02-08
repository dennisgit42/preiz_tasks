class AccountDeletionMailer < ApplicationMailer
  default from: 'no-reply@preiz_tasks.herokuapp.com'

  def account_deletion_email(user)
    @user_name = user.name
    @user_email = user.email
    mail(to: @user_email, subject: 'Your account has been deleted.')
  end
end
