class CreateWardens < ActiveRecord::Migration[7.0]
  def change
    create_table :wardens do |t|
      t.string :name
      t.string :mobileno
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :gender

      t.timestamps
    end
  end
end
