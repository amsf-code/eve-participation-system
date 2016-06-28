class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :character_name
      t.string :character_id

      t.string :corporation_name
      t.string :corporation_id

      t.string :alliance_name
      t.string :alliance_id

      t.timestamps null: false
    end
  end
end
