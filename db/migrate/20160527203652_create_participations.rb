class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :fleet
      t.string :eve_charid

      t.string :eve_corpid
      t.string :eve_allianceid
      t.string :eve_shiptypeid
      t.string :eve_solarsystemid
      t.string :eve_stationid
      t.string :eve_constellationid

      t.timestamps null: false
    end

    add_index :participations, %i(fleet_id eve_charid), unique: true
  end
end
