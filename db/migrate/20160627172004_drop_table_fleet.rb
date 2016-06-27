class DropTableFleet < ActiveRecord::Migration
  def change
    drop_table :fleets
  end
end
