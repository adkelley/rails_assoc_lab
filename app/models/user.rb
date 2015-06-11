class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :books_users
  has_many :books, through: :books_users
end
