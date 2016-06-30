class CreateAdventurers < ActiveRecord::Migration
  def change
    create_table :adventurers do |t|
      t.string :pseudo
      t.integer :level
      t.integer :life
      t.integer :stamina
      t.integer :experiences
      t.integer :power
      t.integer :armor
      t.integer :user_id
      t.integer :race_id
      t.integer :class_id
      t.string :sex
      t.timestamps null: false
    end
  end
end
