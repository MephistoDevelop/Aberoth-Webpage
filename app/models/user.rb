class User < ApplicationRecord
  attr_accessor :remember_token
  before_create :create_remember_token
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.digest(token)
    Digest::SHA1.hexdigest(token)
  end

  def remember
    self.remember_token = User.new_remember_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  def create_remember_token
    self.remember_token = User.new_remember_token
    self.remember_digest = User.digest(remember_token)
  end

  def decrypt(token)
    return false if token.nil?

    remember = Digest::SHA1.hexdigest(token)
    remember_digest == remember
  end
end
