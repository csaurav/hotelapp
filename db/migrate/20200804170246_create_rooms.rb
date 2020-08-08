class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :price
      t.string  :room_no
      t.integer :room_type
      t.string  :description
      t.boolean :checked, :default => false      
      # t.date    :start_date
      # t.date    :end_date
      t.timestamps
    end
  end
end
