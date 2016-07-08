class CreateAlliances < ActiveRecord::Migration
  def change
    create_table :alliances do |t|
      t.string :name
      t.string :short_name

      t.integer :alliance_id

      t.timestamps null: false
    end

    add_index :alliances, %i(alliance_id), unique: true
  end
end
