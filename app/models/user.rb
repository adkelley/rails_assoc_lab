class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :books_users
  has_many :books, through: :books_users
end
