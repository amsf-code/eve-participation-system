class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|

      t.string :eve_charid
      t.string :eve_charname

      t.string :eve_corpid

      t.string :eve_allianceid

      t.string :active

      t.timestamps null: false
    end

    add_index :characters, %i(eve_charid), unique: true
  end
end
