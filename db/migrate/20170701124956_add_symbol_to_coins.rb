class AddSymbolToCoins < ActiveRecord::Migration
  def change
    add_column :coins, :symbol, :string
  end
end
