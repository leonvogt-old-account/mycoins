class AddNumberOfCoinsToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :number_of_coins, :Float
  end
end
