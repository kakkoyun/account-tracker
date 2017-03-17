class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :description
      t.integer :status

      t.timestamps null: false
    end
  end
end
