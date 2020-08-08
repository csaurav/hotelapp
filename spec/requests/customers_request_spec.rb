require 'rails_helper'

RSpec.describe "Customer", type: :request do
    let(:room) {
        Room.create(room_no: "111",
                    description: "Lorem ipsum",
                    price: 1000,
                    room_type: 1
        )
    }
    let(:reservation) {
        Reservation.create(start_date: '22/01/2020', end_date: '24/01/2020', room_id: room.id)
    }
    describe "customer specs" do 
        it "get list of all customers" do
            customer = Customer.create(
                                        first_name: "Abc",
                                        last_name: "last name",
                                        address: 'address',
                                        phone_number: 100000,                        
                                        reservation_id: reservation.id
                                    )
            get customers_path
            expect(response).to be_successful            
        end
        
       
    end
end


