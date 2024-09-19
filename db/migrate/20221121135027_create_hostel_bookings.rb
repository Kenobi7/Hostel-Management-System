class CreateHostelBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :hostel_bookings do |t|
      t.string :rollno
      t.string :hostel_name
      t.string :start_date
      t.string :end_date
      t.string :status ,default:"Pending"
      t.integer:room_no

      t.timestamps
    end
  end
end
