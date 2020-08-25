class User < ApplicationRecord
  USERNAME_REGEX = /\A^[a-zA-Z0-9](_(?!(\.|_))|\.(?!(_|\.))|[a-zA-Z0-9]){6,18}[a-zA-Z0-9]$\z/i
  validates :username, presence: true, uniqueness: true, length: { minimum: 5, maximum: 12 }, format: { with: USERNAME_REGEX }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
