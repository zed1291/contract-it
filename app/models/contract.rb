class Contract < ApplicationRecord
  belongs_to :owner
  has_many :bids
  has_many :general_contractors, through: :bids
end
