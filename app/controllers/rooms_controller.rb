class RoomsController < ApplicationController

    # GET show all rooms
    def index
        @rooms = Room.includes(:reservations).all
    end
    
end
