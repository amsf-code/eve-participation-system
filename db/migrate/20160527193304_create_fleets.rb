class CreateFleets < ActiveRecord::Migration
  def change
    create_table :fleets do |t|
      t.timestamps null: false

      t.string :name
      t.string :fc_name
      t.text :doctrin
      t.text :details
      t.string :duration
    end
  end
end
