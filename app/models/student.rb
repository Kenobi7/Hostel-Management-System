class Student < ApplicationRecord
    has_secure_password
    has_one:mess_booking
    has_one:student_booking

  validates :name, presence: true
  validates :mobileno, presence: true, numericality: true, length: { minimum: 10, maximum: 10 }
  validates :Rollno, presence: true, uniqueness: true
end
