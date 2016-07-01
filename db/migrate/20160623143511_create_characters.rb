class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :corporation
      t.references :alliance

      t.string :name
      t.string :character_id

      t.string :corporation_name

      t.timestamps null: false
    end

    add_index :characters, %i(character_id), unique: true
  end
end
