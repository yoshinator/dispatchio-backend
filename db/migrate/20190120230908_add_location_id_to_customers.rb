class AddLocationIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :location_id, :integer
  end
end
