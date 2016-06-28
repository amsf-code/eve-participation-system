class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :corporation
      t.references :alliance

      t.string :character_name
      t.string :character_id

      t.string :corporation_name

      t.string :active

      t.timestamps null: false
    end

    add_index :characters, %i(character_id), unique: true
  end
end
