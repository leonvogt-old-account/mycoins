class AddVolumeBtcToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :volume_btc, :decimal
  end
end
