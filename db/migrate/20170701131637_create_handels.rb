class CreateHandels < ActiveRecord::Migration
  def change
    create_table :handels do |t|
      t.references :user, index: true, foreign_key: true
      t.string :coin
      t.date :date
      t.decimal :number_of_coins
      t.decimal :price_of_coin
      t.string :payed_with

      t.timestamps null: false
    end
  end
end
