class CreateWithdraws < ActiveRecord::Migration[7.1]
  def change
    create_table :withdraws do |t|
      t.float :ammount
      t.date :wdate

      t.timestamps
    end
  end
end
