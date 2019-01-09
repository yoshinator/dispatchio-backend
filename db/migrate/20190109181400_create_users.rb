class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :f_name
      t.string :l_name
      t.string :password_digest
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
