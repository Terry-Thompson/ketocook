class User < ApplicationRecord
  has_secure_password
  has_many :recipes


#  validates :password, presence: true unless :password_digest
  validates :username, presence: true, uniqueness: true
  validates :email, uniqueness: true, :format => /\A[a-zA-Z0-9.!\#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/


  def self.from_omniauth(auth)
    # Creates a new user only if it doesn't exist
    User.find_or_create_by(uid: auth[:uid], provider: auth[:provider]) do |u|
      binding.pry 
      u.email = auth[:info][:email]
      u.password = SecureRandom.hex(16)
      end# of block
  end#of method
end#of class
