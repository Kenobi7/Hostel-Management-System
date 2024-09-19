class CreateComplaints < ActiveRecord::Migration[7.0]
  def change
    create_table :complaints do |t|
      t.string :rollno
      t.string :description

      t.timestamps
    end
  end
end
