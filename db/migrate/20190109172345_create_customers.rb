class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :poc
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :zip
      t.string :state
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
