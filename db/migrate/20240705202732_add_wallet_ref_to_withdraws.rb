class AddWalletRefToWithdraws < ActiveRecord::Migration[7.1]
  def change
    add_reference :withdraws, :wallet, null: false, foreign_key: true
  end
end
