class Owner < ApplicationRecord
    has_many :contracts
    has_many :bids, through: :contracts
end
