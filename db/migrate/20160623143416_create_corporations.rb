class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.references :alliance

      t.string :name
      t.string :corporation_id
      t.string :member_count

      t.timestamps null: false
    end

    add_index :corporations, %i(corporation_id), unique: true
  end
end
