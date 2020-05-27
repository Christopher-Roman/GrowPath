class User < ApplicationRecord
  has_many :plants

  has_secure_password

  validates_presence_of :username

  validates_uniqueness_of :username

  validates_uniqueness_of :email

  validates_length_of :username, minimum: 5, maximum: 20, allow_blank: false

  validates_length_of :password, minimum: 8, maximum: 20, allow_blank: false

end
