class Wallet < ApplicationRecord
  self.primary_key = :address
  belongs_to :user
  has_many :payments
end
