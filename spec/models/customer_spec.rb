require 'rails_helper'

RSpec.describe Customer, type: :model do
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
    subject {        
        described_class.create(first_name: "Abc",
                            last_name: "last name",
                            address: 'address',
                            phone_number: 100000,                        
                            reservation_id: reservation.id
                            )
    }
    
    describe "Associations" do
        it { should belong_to(:reservation) }
        
    end

    describe "Validity" do
        it "should validate the presence of first_name" do
            should validate_presence_of(:first_name)
        end
        it "should validate the presence of last_name" do
            should validate_presence_of(:last_name)
        end
        it "should validate the presence of address" do
            should validate_presence_of(:address)
        end
        it "should not validate the presence of gender" do
            should_not validate_presence_of(:gender)
        end
        
        it { should_not validate_presence_of(:phone_number) }
        
        it "is valid with valid attributes" do
            expect(subject).to be_valid            
        end        
            
    end

end
