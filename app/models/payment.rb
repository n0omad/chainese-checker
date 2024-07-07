class Payment < ApplicationRecord
  self.primary_key = :txid

  belongs_to :wallet, foreign_key: 'address'
end
