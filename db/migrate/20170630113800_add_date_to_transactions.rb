class AddDateToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :Date, :Date
  end
end
