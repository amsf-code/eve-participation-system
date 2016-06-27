# frozen_string_literal: true
class CreateFleets < ActiveRecord::Migration
  def change
    create_table :fleets do |t|
      t.references :user
      t.references :alliance
      
      t.string :crest_fleet_id

      t.string :name

      t.string :fc_name
      t.string :fc_id

      t.string :wing_booster_name
      t.string :wing_booster_id

      t.string :doctrin

      t.string :reason
      t.text :details

      t.string :pilot_count

      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps null: false
    end
  end
end
