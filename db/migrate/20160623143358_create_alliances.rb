class CreateAlliances < ActiveRecord::Migration
  def change
    create_table :alliances do |t|

      t.string :eve_allianceid
      t.string :eve_alliancename

      t.string :active

      t.timestamps null: false
    end

    add_index :alliances, %i(eve_allianceid), unique: true
  end
end
