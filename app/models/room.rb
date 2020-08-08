class Room < ApplicationRecord
    # has_many :reservations, dependent: :destroy
    has_many :reservations

    enum room_type: ["Single", "Double", "Luxury","Suites"]

    validates :room_no, :price, :room_type, :description, :price,  presence: :true

end
