class AddRankToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :rank, :integer
  end
end
