require 'rails_helper'

RSpec.describe Room, type: :model do
  subject {
    described_class.new(room_no: "111",
                        description: "Lorem ipsum",
                        price: 1000,
                        room_type: 1
                        )
  }
  
  describe "Validity" do
    it "should validate the presence of room_no" do
      should validate_presence_of(:room_no)
    end
    it "should validate the presence of description" do
      should validate_presence_of(:description)
    end
    it "should validate the presence of price" do
      should validate_presence_of(:price)
    end
    it "should not validate the presence of room_type" do
      should validate_presence_of(:room_type)
    end
    
    it "is valid with valid attributes" do
      expect(subject).to be_valid            
    end        
    
  end
end
