class User < ApplicationRecord
  has_secure_password
  has_many :recipes


  validates :password, presence: true unless :password_digest
  validates :username, presence: true, uniqueness: true
  validates :email, uniqueness: true, :format => /\A[a-zA-Z0-9.!\#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/


  def self.from_omniauth(auth)
    # Creates a new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
      binding.pry
      user.username = auth.info.name
      user.email = auth.info.email
    end
  end
end
