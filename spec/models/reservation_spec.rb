require 'rails_helper'

RSpec.describe Reservation, type: :model do
    let(:room) {
        Room.create(room_no: "111",
                    description: "Lorem ipsum",
                    price: 1000,
                    room_type: 1
        )
    }
        
    subject {        
        described_class.create(
            start_date: "22/01/2020",
            end_date: "24/01/2020",
            room_id: room.id
        )
    }
    
    describe "Associations" do
        it { should belong_to(:room) }
        
    end

    describe "Validity" do
        it "should validate the presence of start_date" do
            should validate_presence_of(:start_date)
        end
        it "should validate the presence of end_date" do
            should validate_presence_of(:end_date)
        end

        it "should belong to room" do
            should belong_to(:room).required(true)
        end

        it "is valid with valid attributes" do
            expect(subject).to be_valid            
        end 
        
            
    end

end
