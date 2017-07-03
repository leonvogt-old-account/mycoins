class AddPercentChange24hToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :percent_change_24h, :decimal
  end
end
