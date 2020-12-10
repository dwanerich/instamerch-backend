class User < ApplicationRecord

    has_many :items
    has_secure_password
    validates_presence_of :email
    validates_uniqueness_of :email
end
