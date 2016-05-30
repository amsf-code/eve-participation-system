class CreateFleets < ActiveRecord::Migration
  def change
    create_table :fleets do |t|
      t.timestamps null: false

      t.string :fleet_name
      t.string :fc_name
      t.string :doctrin
      t.string :details
      t.string :duration
    end
  end
end
