class UsersSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :username, :password_digest, :is_adult, :date_of_birth
  has_secure_password
end
