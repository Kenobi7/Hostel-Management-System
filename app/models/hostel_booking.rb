class HostelBooking < ApplicationRecord
    validates :rollno, presence: true, uniqueness: true
    validates :hostel_name, presence: true
    validates :room_no, presence: true, uniqueness: true
end
