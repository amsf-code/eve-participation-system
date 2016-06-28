class CreateAlliances < ActiveRecord::Migration
  def change
    create_table :alliances do |t|
      t.string :alliance_name
      t.string :alliance_id

      t.string :active

      t.timestamps null: false
    end

    add_index :alliances, %i(alliance_id), unique: true
  end
end
