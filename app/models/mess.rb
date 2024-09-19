class Mess < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :mess_id, presence: true, uniqueness: true
end
