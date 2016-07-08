class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :character_name
      t.integer :character_id

      t.string :corporation_name
      t.integer :corporation_id

      t.timestamps null: false
    end

    add_index :users, %i(character_id), unique: true
  end
end
