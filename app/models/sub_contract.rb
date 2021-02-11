class SubContract < ApplicationRecord
  belongs_to :general_contractor
  has_many :sub_bids
  has_many :subcontractors, through: :sub_bids
end
