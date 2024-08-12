class Payment < ApplicationRecord
  self.primary_key = :txid

  belongs_to :user
end
