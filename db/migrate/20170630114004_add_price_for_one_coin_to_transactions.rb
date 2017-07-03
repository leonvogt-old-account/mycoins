class AddPriceForOneCoinToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :price_for_one_coin, :Float
  end
end
