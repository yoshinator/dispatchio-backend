class AddLocationIdToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :location_id, :integer
  end
end
