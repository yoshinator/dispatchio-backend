class AddPositionUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lat, :string
    add_column :users, :lon, :string 
    add_column :users, :upat, :string
  end
end
