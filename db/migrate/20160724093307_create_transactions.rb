class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :account, null: false, foreign_key: true
      t.string :description
      t.monetize :amount

      t.timestamps null: false
    end
  end
end
