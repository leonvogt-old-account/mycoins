class AddPayedWithToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :payed_with, :String
  end
end
