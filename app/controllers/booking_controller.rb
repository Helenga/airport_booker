class BookingController < ApplicationController

	def new
		@flight = Flight.find_by_id(params[:flight_id])
		steps.times { @flight.passengers.build }
	end
	
	def create
		@flight = Flight.find_by_id(params[:flight][:id])
		@flight.update(passenger_params)
		if @flight.save 
			redirect_to @flight, notice: "Passengers were successfully added"
		else
			render 'new'
			flash.now[:notice] = "Wrong name or email"
		end
	end
	
private

	def booking_params
		params.permit(:flight_id, :number_of_passengers)
	end
	
	def passenger_params
		params.require(:flight).permit( :id, 
								passengers_attributes: [:name, :email])
	end
	
	def steps
		params[:number_of_passengers].to_i
	end

end
