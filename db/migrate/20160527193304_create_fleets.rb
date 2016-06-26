# frozen_string_literal: true
class CreateFleets < ActiveRecord::Migration
  def change
    create_table :fleets do |t|
      t.timestamps null: false
      t.references :user
      t.references :alliance

      t.string :name
      t.string :fc_name
      t.text :backup_fcs
      t.text :fleet_booster
      t.text :doctrin
      t.text :details
      t.string :duration
    end
  end
end
