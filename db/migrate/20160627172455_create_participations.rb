# frozen_string_literal: true
class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :fleet

      t.string :character_name
      t.string :character_id

      t.string :ship_name
      t.string :ship_id

      t.string :solarsystem_name
      t.string :solarsystem_id

      t.string :station_name
      t.string :station_id

      t.string :fc
      
      t.string :wing_booster

      t.timestamps null: false
    end

    add_index :participations, %i(fleet_id character_id), unique: true
  end
end
