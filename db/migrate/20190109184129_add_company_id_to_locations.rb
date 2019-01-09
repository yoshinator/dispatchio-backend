class AddCompanyIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :company_id, :integer
  end
end
