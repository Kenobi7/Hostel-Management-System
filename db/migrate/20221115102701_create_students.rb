class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :Rollno
      t.string :mobileno
      t.string :password_digest
      t.string :email
      t.string :gender
      t.string :address

      t.timestamps
    end
  end
end
