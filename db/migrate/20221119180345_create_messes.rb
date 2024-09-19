class CreateMesses < ActiveRecord::Migration[7.0]
  def change
    create_table :messes do |t|
      t.string :mess_id
      t.string :name
      t.string :address
      t.string :mobileno
      t.integer :max_capacity
      t.integer :available

      t.timestamps
    end
  end
end
