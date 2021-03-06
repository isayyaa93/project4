class User < ApplicationRecord
  has_many :blogs
  
  has_secure_password

  validates :username, presence: true, uniqueness: true
end
