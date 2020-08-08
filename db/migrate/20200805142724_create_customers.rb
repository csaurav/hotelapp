class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.text   :address
      t.integer :phone_number 
      t.belongs_to :reservation
      t.timestamps

      # t.index ["reservation_id"], name: "index_customers_on_reservation_id"
    
    end
  end
end
