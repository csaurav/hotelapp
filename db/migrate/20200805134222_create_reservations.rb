class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.integer :room_id
      t.timestamps
      
      t.index ["room_id"], name: "index_reservations_on_room_id"
    end
  end
end
