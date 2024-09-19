class CreateMessBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :mess_bookings do |t|
      t.string :rollno
      t.string :mess_name
      t.string :start_date
      t.string :end_date
      t.string :status,default:"Pending"

      t.timestamps
    end
  end
end
