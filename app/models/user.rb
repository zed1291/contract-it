class User < ApplicationRecord
    attr_accessor :username, :password
    
    validates_confirmation_of :password
    validates_presence_of :password, on: :create
    validates_presence_of :username
    validates_uniqueness_of :username

end
