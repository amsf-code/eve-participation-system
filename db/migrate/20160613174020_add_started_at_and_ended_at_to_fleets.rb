class AddStartedAtAndEndedAtToFleets < ActiveRecord::Migration
  def change
    add_column :fleets, :started_at, :datetime
    add_column :fleets, :ended_at, :datetime
  end
end
