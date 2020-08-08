class Reservation < ApplicationRecord
    belongs_to :room

    # has_one :customer, dependent: :destroy
    has_one :customer

    validates :start_date, :end_date, presence: :true
    accepts_nested_attributes_for :customer, :allow_destroy => true

    after_save do
        room.update_attribute(:checked, true)
    end
end
