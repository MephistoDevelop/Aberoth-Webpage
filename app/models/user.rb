class User < ApplicationRecord
  validates :name, presence:true
  validates :lastname, presence: true
  validates :email,presence:true , uniqueness:true
  validates :age,presence:true
  has_secure_password
end
