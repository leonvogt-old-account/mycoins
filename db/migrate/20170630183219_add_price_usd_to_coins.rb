class AddPriceUsdToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :price_usd, :decimal
  end
end
