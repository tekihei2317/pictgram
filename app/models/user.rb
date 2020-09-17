class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :name, length: { maximum: 15 }

  VALID_EMAIL_REGEX=/.+@.+\..+/
  validates :email, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX }

  VALID_PASSWORD_REGEX=/(?=.*?[a-z])(?=.*?\d).{8,32}/
  validates :password, length: { in: 8..32 }
  validates :password, format: { with: VALID_PASSWORD_REGEX }

end