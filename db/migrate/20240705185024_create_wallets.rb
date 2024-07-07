class CreateWallets < ActiveRecord::Migration[7.1]
  def change
    create_table :wallets do |t|
      t.string :address, null: false

      t.timestamps
    end
    add_index :wallets, :address, unique: true
  end
end
