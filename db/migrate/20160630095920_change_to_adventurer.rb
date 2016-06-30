class ChangeToAdventurer < ActiveRecord::Migration
  def change
    change_column :adventurers, :money, :integer, default: 0
    change_column :adventurers, :level, :integer, default: 1
    change_column :adventurers, :stamina, :integer, default: 100
    change_column :adventurers, :experiences, :integer, default: 0
    change_column :adventurers, :power, :integer, default: 0
    change_column :adventurers, :armor, :integer, default: 0
    change_column :adventurers, :life, :integer, default: 500
  end
end
