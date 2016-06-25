class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|

      t.string :eve_corpid
      t.string :eve_corpname

      t.string :active

      t.timestamps null: false
    end

    add_index :corporations, %i(eve_corpid), unique: true
  end
end
