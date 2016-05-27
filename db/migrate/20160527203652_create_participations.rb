class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :fleet
      t.string :eve_charid

      t.timestamps null: false
    end

    add_index :participations, %i(fleet_id eve_charid), unique: true
  end
end
