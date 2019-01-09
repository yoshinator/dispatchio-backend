class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :customer_id
      t.integer :location_id
      t.integer :team_id
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :zip
      t.string :state
      t.integer :price
      t.string :schedule_date
      t.string :schedule_time
      t.string :start_time
      t.string :end_time
      t.string :status
      t.string :payment_type
      t.boolean :paid

      t.timestamps
    end
  end
end
