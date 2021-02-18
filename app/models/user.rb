class User < ApplicationRecord
    validates_uniqueness_of :username
    # validates :password, 
end
