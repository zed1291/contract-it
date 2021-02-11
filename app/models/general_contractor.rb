class GeneralContractor < ApplicationRecord
    has_many :bids
    has_many :subcontracts
    has_many :contracts, through: :bids
    has_many :sub_bids, through: :subcontracts
end
