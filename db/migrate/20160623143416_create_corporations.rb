class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.references :alliance

      t.string :name
      t.string :ticker

      t.integer :corporation_id

      t.integer :member_count

      t.timestamps null: false
    end

    add_index :corporations, %i(corporation_id), unique: true
  end
end
