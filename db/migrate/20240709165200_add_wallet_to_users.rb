class AddWalletToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :wallet, :string, null: false
    add_index :users, :wallet, unique: true
  end
end
