class User < ApplicationRecord
  has_many :user_todos
  has_many :todos, through: :user_todos
  validates_presence_of :first_name, :last_name, :email, :password, :date_of_birth
  validates :email, uniqueness: {case_sensitive: false} 
  has_secure_password
end
