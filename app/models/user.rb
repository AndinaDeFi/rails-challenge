class User < ApplicationRecord
  VALID_EMAIL_REGEX = URI::MailTo::EMAIL_REGEXP.freeze
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX, message: 'only email format' }
  validates :password, presence: true, length: { minimum: 6 }
end
