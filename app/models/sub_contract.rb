class SubContract < ApplicationRecord
  belongs_to :users
  has_many :sub_bids
end
