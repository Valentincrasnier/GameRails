class ChangeClasseToAdven < ActiveRecord::Migration
  def change
    remove_column :adventurers, :class_id, :integer
    add_column :adventurers, :classe_id, :integer
  end
end
