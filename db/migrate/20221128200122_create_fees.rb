class CreateFees < ActiveRecord::Migration[7.0]
  def change
    create_table :fees do |t|
      t.string :rollno
      t.integer :amount
      t.string :status ,default:"Not paid"

      t.timestamps
    end
  end
end
