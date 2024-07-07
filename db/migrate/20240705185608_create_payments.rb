class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments, id: false, primary_key: :txid do |t|
      t.string :txid, null:false
      t.float :ammount
      t.date :txdate

      t.timestamps
    end
    add_index :payments, :txid, unique: true
  end
end
