class AddCoinToTransactions < ActiveRecord::Migration
  def change
    add_reference :transactions, :coin, index: true, foreign_key: true
  end
end
