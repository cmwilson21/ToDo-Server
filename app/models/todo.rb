class Todo < ApplicationRecord
  has_many :users, through: :user_todos
  has_many :user_todos
end
