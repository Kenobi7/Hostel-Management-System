class CreateHostels < ActiveRecord::Migration[7.0]
  def change
    create_table :hostels do |t|
      t.string :hostel_id
      t.string :name
      t.string :address
      t.string :mobileno
      t.integer :no_of_rooms
      t.integer :available_rooms

      t.timestamps
    end
  end
end
