class User < ApplicationRecord
  has_secure_password
  has_many :recipes
  has_many :ingredients, through: :recipes

  validates :password, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, uniqueness: true, :format => /\A[a-zA-Z0-9.!\#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/

end
