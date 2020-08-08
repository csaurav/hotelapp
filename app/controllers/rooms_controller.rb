class RoomsController < ApplicationController

    # show all rooms
    def index
        @rooms = Room.includes(:reservations).all
    end
    
    def show
    end
end
