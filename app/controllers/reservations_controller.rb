class ReservationsController < ApplicationController
    before_action :set_reservation, only: [:show, :check_out]

    def new
        @reservation = Reservation.new(room_id: params[:room_id])
        @reservation.customer = Customer.new
    end
    
    # POST /reservations
    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.room_id = params[:room_id]   
        # byebug       
        respond_to do |format|
            if @reservation.save
            format.html { redirect_to root_path, notice: 'Reservation was successfully created.' }
            else
            format.html { render :new}
            end
        end
    end
    
    #GET /show booking
    def show
        if @reservation
          @room = @reservation.room
          @customer = @reservation.customer
        else
          redirect_to root_path
        end
    end

    #remove reservation
    def check_out
        if @reservation
            customer = @reservation.customer
            customer.update_attribute(:reservation_id, nil)
            room = @reservation.room
            room.update_attribute(:checked, !room.checked)
            
            @reservation.destroy
            respond_to do |format|
                format.html { redirect_to root_path, notice: 'Customer has been checked out' }                
            end
        else
            respond_to do |format|
                format.html { redirect_to root_path, notice: 'Please try after sometime' }                
              end            
        end
    end
    
    
    private

    def set_reservation
        @reservation ||= Reservation.find_by(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reservation_params
        params.require(:reservation).permit(:start_date, :end_date, :room_id, 
        :customer_attributes => [:first_name, :last_name, :gender, :address, :phone_number])
      end
    
end
