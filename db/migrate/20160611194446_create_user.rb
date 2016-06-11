class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :character_name
      t.integer :character_id
    end
  end
end
