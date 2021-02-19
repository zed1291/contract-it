class SubBid < ApplicationRecord
  belongs_to :sub_contract
  belongs_to :user
end
