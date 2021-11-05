class User < ApplicationRecord
  has_many :user_todos
  has_many :todos, through: :user_todos
  has_secure_password
end
