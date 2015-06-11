class Book < ActiveRecord::Base
  belongs_to :author
  has_many :books_libraries
  has_many :libraries, through: :books_libraries
  has_many :users, through: :books_user
end
