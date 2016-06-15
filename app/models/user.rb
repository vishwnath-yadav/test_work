class User < ActiveRecord::Base
   has_many :blogs

   validates_presence_of :email, :password, :name
   validates :email, uniqueness: true
   validates :password, length: { minimum: 5}

   validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
