class MessBooking < ApplicationRecord
    validates :rollno, presence: true, uniqueness: true
    validates :mess_name, presence: true
end
