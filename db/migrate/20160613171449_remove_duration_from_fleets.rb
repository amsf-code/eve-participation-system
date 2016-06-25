class RemoveDurationFromFleets < ActiveRecord::Migration
  def change
    remove_column :fleets, :remove_column, :string
    remove_column :fleets, :duration, :string
  end
end
