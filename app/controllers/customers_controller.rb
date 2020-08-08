class CustomersController < ApplicationController
    before_action :set_customer, only: [:edit, :update]

    def index
      # byebug
        @customers = Customer.search(params[:search])
        # byebug
    end

    def edit

    end
    # update customer information
    def update
        respond_to do |format|
            if @customer.update(customer_params)
              format.html { redirect_to  room_reservation_path(@customer.reservation.room.id, @customer.reservation.id), notice: 'Customer was successfully updated.' }
            else
              format.html { render :edit }
            end
          end
    end

    # find customer information
    
    def find_customers

    end

    def search_customer

    end

    private

    def set_customer
        @customer ||= Customer.find_by(id: params[:id])
    end

    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :gender, :address, :search)
    end
    
    
end
