class User < ActiveRecord::Base
  has_many :lists

  attr_accessor :password
  before_save :encrypt_password

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
