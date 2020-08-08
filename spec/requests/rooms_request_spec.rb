require 'rails_helper'

RSpec.describe "Rooms", type: :request do
    describe "room specs" do 
        it "get list of all rooms" do
                room = Room.new(
                    room_no: "111",
                    description: "Lorem ipsum",
                    price: 1000,
                    room_type: 1
                )   
            get "/rooms"
            expect(response).to be_successful            
        end
        
       
    end
end


