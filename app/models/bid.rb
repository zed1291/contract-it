class Bid < ApplicationRecord
  belongs_to :contract
  belongs_to :general_contractor
end
