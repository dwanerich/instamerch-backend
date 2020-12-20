class UserSerializer < ActiveModel::Serializer
  has_many :covers
  attributes :id, :username, :email
end
