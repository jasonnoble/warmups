class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :color
      t.integer :eyes
      t.string :diet

      t.timestamps null: false
    end
  end
end
