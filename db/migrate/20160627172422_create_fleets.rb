# frozen_string_literal: true
class CreateFleets < ActiveRecord::Migration
  def change
    create_table :fleets do |t|
      t.references :user
      t.references :alliance

      t.string :eve_fleet_id

      t.text :name

      t.string :fc_name
      t.integer :fc_id

      t.string :doctrin

      t.string :reason
      t.text :details

      t.integer :pilot_count

      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps null: false
    end
  end
end
