class Hostel < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :hostel_id, presence: true, uniqueness: true
end
