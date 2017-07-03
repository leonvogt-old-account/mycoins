class AddPriceBtcToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :price_btc, :decimal
  end
end
