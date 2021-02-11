class Subcontractor < ApplicationRecord
    has_many :sub_bids
    has_many :subcontracts, through: :sub_bids
end
