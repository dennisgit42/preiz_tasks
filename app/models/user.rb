class User < ApplicationRecord
  before_destroy :user_deletion_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  def user_deletion_email
    AccountDeletionMailer.account_deletion_email(self).deliver_now
  end
end
