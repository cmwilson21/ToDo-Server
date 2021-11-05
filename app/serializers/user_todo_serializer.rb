class UserTodoSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :todo
end
