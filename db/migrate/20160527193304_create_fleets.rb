class CreateFleets < ActiveRecord::Migration
  def change
    create_table :fleets do |t|
      t.string :uuid
      t.string :link_key

      t.timestamps null: false
    end

    add_index :fleets, :uuid, unique: true
    add_index :fleets, :link_key, unique: true
  end
end
