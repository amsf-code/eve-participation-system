class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :fleet
      t.string :eve_charid
      
      t.timestamps null: false
    end
  end
end
