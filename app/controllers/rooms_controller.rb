class RoomsController < ApplicationController

   
    # Ex:- scope :active, -> {where(:active => true)}
    def index
        @rooms = Room.includes(:reservations).all
    end
    
    def show
    end
end
