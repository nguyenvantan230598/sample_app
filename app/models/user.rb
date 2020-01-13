class User < ApplicationRecord
  VALID_EMAIL_REGEX = Settings.valid_email
  before_save{email.downcase!}

  validates :name, presence: true, length: {maximum: Settings.number1}
  validates :email, presence: true, length: {maximum: Settings.number2},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: true
  validates :password, presence: true, length: {minimum: Settings.number3}

  has_secure_password
end
