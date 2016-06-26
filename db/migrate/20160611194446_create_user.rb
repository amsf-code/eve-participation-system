class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :character_name
      t.integer :character_id

      t.string :corporation_name
      t.integer :corporation_id

      t.string :alliance_name
      t.integer :alliance_id
    end
  end
end
