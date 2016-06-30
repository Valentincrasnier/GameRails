class AddMoneyToAdventurer < ActiveRecord::Migration
  def change
    add_column :adventurers, :money, :integer
  end
end
