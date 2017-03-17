class AddHappenedAtToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :happened_at, :datetime
  end
end
