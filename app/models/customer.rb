class Customer < ApplicationRecord
    
    validates_presence_of :first_name, :last_name, :address
    validates_presence_of :reservation
    validates :phone_number,  :presence => {:message => 'Please enter your phone number'},
                     :numericality => true,
                     :length => { :minimum => 6, :maximum => 11 }


    include SearchCop
    belongs_to :reservation


    search_scope :customer_search do
        attributes :first_name, :last_name        
    end

    def self.search(value)
        if value
            result = customer_search(value)    
        else
            result = self.all
        end        
        
        result
    end
    
end
